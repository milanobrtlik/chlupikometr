using Chlupikometr.Inventory.Entity;
using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.Inventory.Dataloader;

public class InventoryLevelByInventoryIdDataloader : GroupedDataLoader<int, InventoryLevel>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public InventoryLevelByInventoryIdDataloader(
        IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<ILookup<int, InventoryLevel>> LoadGroupedBatchAsync(
        IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);
        var levels = await db
            .InventoryLevels
            .Where(il => keys.Contains(il.InventoryId))
            .ToListAsync(cancellationToken);

        return levels.ToLookup(il => il.InventoryId, il => il);
    }
}
