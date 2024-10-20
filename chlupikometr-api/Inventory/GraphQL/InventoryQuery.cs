using Chlupikometr.System.GraphQL;
using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.Inventory.GraphQL;

[ExtendObjectType(typeof(Query))]
public class InventoryQuery
{
    [Authorize(Policy = "RoleBabysitter")]
    public IQueryable<Entity.Inventory> InventoryList(
        int familyId,
        AppDbContext db
    ) => db
        .Inventories
        .Where(inventory => inventory.FamilyId.Equals(familyId))
        .OrderBy(inventory => inventory.Id);

    [Authorize(Policy = "RoleBabysitter")]
    public async Task<InventoryPayload> InventoryDetail(
        int familyId,
        int id,
        AppDbContext db,
        CancellationToken cancellationToken)
    {
        var inventory = await db
            .Inventories
            .Where(i => i.Id.Equals(id))
            .Where(i => i.FamilyId.Equals(familyId))
            .FirstOrDefaultAsync(cancellationToken);

        if (inventory is null)
        {
            return new InventoryPayload(new[] { new UserError("Inventory #{id} not found", UserError.NotFound) });
        }

        return new InventoryPayload(inventory);
    }
}
