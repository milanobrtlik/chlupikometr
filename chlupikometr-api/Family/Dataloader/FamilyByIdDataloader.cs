using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.Family.Dataloader;

public class FamilyByIdDataloader : BatchDataLoader<int, Entity.Family>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public FamilyByIdDataloader(
        IDbContextFactory<AppDbContext> dbContextFactory,
        IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null
    ) : base(batchScheduler, options)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, Entity.Family>> LoadBatchAsync(
        IReadOnlyList<int> keys,
        CancellationToken ct
    )
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(ct);

        return await db
            .Families
            .Where(f => keys.Contains(f.Id))
            .ToDictionaryAsync(f => f.Id, f => f, ct);
    }
}
