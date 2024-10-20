using Chlupikometr.Inventory.Entity;
using Chlupikometr.System.GraphQL;
using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.Inventory.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class InventoryMutation
{
    [Authorize(policy: "RoleParent")]
    public async Task<InventoryPayload> InventoryCreate(
        int familyId,
        InventoryCreateInput input,
        AppDbContext db,
        CancellationToken ct)
    {
        var inventory = new Entity.Inventory
        {
            Title = input.Title,
            Description = input.Description.Value,
            FamilyId = familyId,
        };
        db.Add(inventory);
        foreach (var (title, description, reward) in input.Levels)
        {
            var level = new InventoryLevel
            {
                Reward = reward,
                Title = title,
                Inventory = inventory,
                Description = description.Value,
            };
            db.Add(level);
            inventory.Levels.Add(level);
        }

        await db.SaveChangesAsync(ct);

        return new InventoryPayload(inventory);
    }

    public async Task<InventoryPayload> InventoryUpdate(
        int familyId,
        int inventoryId,
        InventoryUpdateInput input,
        AppDbContext db,
        CancellationToken ct
    )
    {
        var inventory = await db.Inventories
            .Include(i => i.Levels)
            .Where(i => i.Id.Equals(inventoryId))
            .FirstOrDefaultAsync(ct);
        if (inventory is null)
            return new InventoryPayload(new[]
                { new UserError($"Inventory #{inventoryId} not found.", UserError.NotFound) });

        if (input.Title.HasValue) inventory.Title = input.Title.Value!;
        if (input.Description.HasValue) inventory.Description = input.Description.Value;
        if (input.Levels.HasValue)
        {
            foreach (var updateInput in input.Levels.Value!)
            {
                var lvl = inventory.Levels.Where(lvl => lvl.Id.Equals(updateInput.LevelId)).FirstOrDefault();
                if (lvl is null)
                {
                    var errors = new List<UserError>();
                    if (updateInput.Reward.HasValue == false)
                        errors.Add(new UserError("Reward can't be empty during creation.", UserError.InvalidArgument));
                    if (updateInput.Title.HasValue == false)
                        errors.Add(new UserError("Title can't be empty during creation.", UserError.InvalidArgument));
                    if (errors.Count > 0) return new InventoryPayload(errors);
                    lvl = new InventoryLevel
                    {
                        Inventory = inventory,
                        Reward = (int)updateInput.Reward.Value!,
                        Title = updateInput.Title.Value!,
                    };
                    inventory.Levels.Add(lvl);
                }
                else
                {
                    if (updateInput.Title.HasValue) lvl.Title = updateInput.Title.Value!;
                    if (updateInput.Reward.HasValue) lvl.Reward = (int)updateInput.Reward.Value!;
                }
            }

            foreach (var level in inventory.Levels)
            {
                if (input.Levels.Value.Any(l => l.LevelId.Equals(level.Id)) == false)
                {
                    db.Remove(level);
                }
            }
        }

        await db.SaveChangesAsync(ct);

        return new InventoryPayload(inventory);
    }
}
