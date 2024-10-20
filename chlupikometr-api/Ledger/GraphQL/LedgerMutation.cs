using Chlupikometr.Family.Entity;
using Chlupikometr.Ledger.Entity;
using Chlupikometr.System.GraphQL;
using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.Ledger.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class LedgerMutation
{
    [Authorize(Policy = "RoleBabysitter")]
    public async Task<ConfirmationPayload> LedgerInsert(
        int familyId,
        LedgerInsertInput input,
        AppDbContext db,
        [GlobalState] int currentUserId,
        CancellationToken cancellationToken)
    {
        var inventoryItem = await db
            .Inventories
            .Where(i => i.Id.Equals(input.InventoryId))
            .Where(i => i.FamilyId.Equals(familyId))
            .FirstOrDefaultAsync(cancellationToken);
        if (inventoryItem is null)
        {
            return new ConfirmationPayload(new[]
                { new UserError($"Inventory item #{input.InventoryId} not found.", UserError.NotFound) });
        }

        await db.Database
            .ExecuteSqlRawAsync(
                "UPDATE inventory SET usage = usage + 1 WHERE id = {0}",
                inventoryItem.Id
            );

        var children = await db.Families
            .Where(f => f.Id.Equals(familyId))
            .Include(f => f.FamilyUsers)
            .SelectMany(f => f.FamilyUsers.Where(fu => fu.Kind.Equals(FamilyUserKind.Child)))
            .Include(fu => fu.User)
            .Select(fu => fu.User!)
            .Where(u => input.ChildRewards.Select(chr => chr.ChildId).Contains(u.Id))
            .ToListAsync(cancellationToken);

        var lastInventorySnapshot = await db
            .InventorySnapshots
            .Where(s => s.InventoryId.Equals(input.InventoryId))
            .OrderByDescending(s => s.Version)
            .FirstOrDefaultAsync(cancellationToken);

        InventorySnapshot? currentInventorySnapshot = null;
        if (lastInventorySnapshot == null || inventoryItem.Version.CompareTo(lastInventorySnapshot.Version) > 0)
        {
            currentInventorySnapshot = new InventorySnapshot
            {
                Version = inventoryItem.Version,
                InventoryId = inventoryItem.Id,
                Title = inventoryItem.Title,
                Description = inventoryItem.Description,
            };
            db.Add(currentInventorySnapshot);
            await db.SaveChangesAsync(cancellationToken);
        }

        foreach (var child in children)
        {
            var reward = input.ChildRewards
                .Where(chr => chr.ChildId.Equals(child.Id))
                .Select(chr => chr.Reward)
                .First();
            if (reward == 0) continue;
            var record = new Entity.Ledger
            {
                Reward = reward,
                EnteredAt = DateTime.UtcNow,
                ParentNote = input.UserNote,
                ParentId = currentUserId,
                ChildId = child.Id,
                FamilyId = familyId,
                InventorySnapshotId = lastInventorySnapshot?.Id ?? currentInventorySnapshot!.Id,
            };
            db.Add(record);
        }

        await db.SaveChangesAsync(cancellationToken);

        return new ConfirmationPayload();
    }
}
