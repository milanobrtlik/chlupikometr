using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.User.Dataloader;

public class PointsByUserIdDataloader : BatchDataLoader<int, int>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public PointsByUserIdDataloader(
        IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, int>> LoadBatchAsync(
        IReadOnlyList<int> keys,
        CancellationToken cancellationToken
    )
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);
        return await db.Ledgers
                .Where(l => keys.Contains(l.ChildId))
                .GroupBy(l => l.ChildId)
                .Select(g => new { g.Key, Points = g.Sum(l => l.Reward) })
                .ToDictionaryAsync(arg => arg.Key, a => a.Points, cancellationToken)
            ;
    }
}
