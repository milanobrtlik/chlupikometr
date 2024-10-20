using Chlupikometr.Inventory.Dataloader;
using Chlupikometr.Inventory.Entity;

namespace Chlupikometr.Inventory.GraphQL;

public class InventoryType : ObjectType<Entity.Inventory>
{
    protected override void Configure(IObjectTypeDescriptor<Entity.Inventory> descriptor)
    {
        descriptor.Field(il => il.Levels)
            .ResolveWith<InventoryResolvers>(r => r.ResolveLevels(default!, default!, default));
    }
}

internal class InventoryResolvers
{
    public async Task<IEnumerable<InventoryLevel>> ResolveLevels(
        [Parent]Entity.Inventory inventory,
        InventoryLevelByInventoryIdDataloader dataloader,
        CancellationToken ct)
    {
        return await dataloader.LoadAsync(inventory.Id, ct);
    }
}
