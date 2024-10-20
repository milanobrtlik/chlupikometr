using Chlupikometr.Ledger.Entity;
using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.Ledger.Dataloader;

public class InventorySnapshotByLedgerIdDataloader : BatchDataLoader<int, InventorySnapshot>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public InventorySnapshotByLedgerIdDataloader(IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler, DataLoaderOptions? options = null
    ) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, InventorySnapshot>> LoadBatchAsync(
        IReadOnlyList<int> keys,
        CancellationToken cancellationToken
    )
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);
        return await db
            .InventorySnapshots
            .Where(snapshot => keys.Contains(snapshot.Id))
            .ToDictionaryAsync(snapshot => snapshot.Id, snapshot => snapshot, cancellationToken);
    }
}
