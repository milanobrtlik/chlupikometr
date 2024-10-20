using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.User.Dataloader;

public class UserByIdDataloader : BatchDataLoader<int, Entity.User>
{
    private readonly IDbContextFactory<AppDbContext> _appDbContextFactory;

    public UserByIdDataloader(
        IDbContextFactory<AppDbContext> appDbContextFactory,
        IBatchScheduler batchScheduler,
        DataLoaderOptions? options = null
    ) : base(batchScheduler, options)
    {
        _appDbContextFactory = appDbContextFactory ?? throw new ArgumentNullException(nameof(appDbContextFactory));
    }

    protected override async Task<IReadOnlyDictionary<int, Entity.User>> LoadBatchAsync(
        IReadOnlyList<int> keys,
        CancellationToken cancellationToken)
    {
        await using var db = await _appDbContextFactory.CreateDbContextAsync(cancellationToken);

        return await db
            .Users
            .Where(user => keys.Contains(user.Id))
            .ToDictionaryAsync(u => u.Id, u => u, cancellationToken);
    }
}
