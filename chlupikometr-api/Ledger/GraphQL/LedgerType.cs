using Chlupikometr.Ledger.Dataloader;
using Chlupikometr.User.Dataloader;

namespace Chlupikometr.Ledger.GraphQL;

public class LedgerType : ObjectType<Entity.Ledger>
{
    protected override void Configure(IObjectTypeDescriptor<Entity.Ledger> descriptor)
    {
        descriptor.Field("title")
            .Type<NonNullType<StringType>>()
            .ResolveWith<LedgerResolvers>(r => r.ResolveTitle(default!, default!, default));

        descriptor.Field("description")
            .Type<StringType>()
            .ResolveWith<LedgerResolvers>(r => r.ResolveDescription(default!, default!, default));

        descriptor.Field(ledger => ledger.Parent)
            .ResolveWith<LedgerResolvers>(r => r.ResolveParent(default!, default!, default));

        descriptor.Field(ledger => ledger.Child)
            .ResolveWith<LedgerResolvers>(r => r.ResolveChild(default!, default!, default));
    }
}

internal class LedgerResolvers
{
    public async Task<string> ResolveTitle(
        [Parent] Entity.Ledger ledger,
        InventorySnapshotByLedgerIdDataloader dataloader,
        CancellationToken ct
    ) => (await dataloader.LoadAsync(ledger.InventorySnapshotId, ct)).Title;

    public async Task<string?> ResolveDescription(
        [Parent] Entity.Ledger ledger,
        InventorySnapshotByLedgerIdDataloader dataloader,
        CancellationToken ct
    ) => (await dataloader.LoadAsync(ledger.InventorySnapshotId, ct)).Description;

    public async Task<User.Entity.User> ResolveParent(
        [Parent] Entity.Ledger ledger,
        UserByIdDataloader dataloader,
        CancellationToken ct
    ) => await dataloader.LoadAsync(ledger.ParentId, ct);

    public async Task<User.Entity.User> ResolveChild(
        [Parent] Entity.Ledger ledger,
        UserByIdDataloader dataloader,
        CancellationToken ct
    ) => await dataloader.LoadAsync(ledger.ChildId, ct);
}
