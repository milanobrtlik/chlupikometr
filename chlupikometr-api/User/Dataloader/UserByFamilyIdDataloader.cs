// using Chlupikometr.Family.Entity;
// using Microsoft.EntityFrameworkCore;
//
// namespace Chlupikometr.User.Dataloader;
//
// public class UserByFamilyIdDataloader : GroupedDataLoader<int, Entity.User>
// {
//     private readonly IDbContextFactory<AppDbContext> _dbContextFactory;
//
//     public UserByFamilyIdDataloader(
//         IDbContextFactory<AppDbContext> dbContextFactory,
//         IBatchScheduler batchScheduler,
//         DataLoaderOptions? options = null) : base(batchScheduler, options)
//     {
//         _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
//     }
//
//     protected override async Task<ILookup<int, Entity.User>> LoadGroupedBatchAsync(
//         IReadOnlyList<int> keys,
//         CancellationToken cancellationToken
//     )
//     {
//         await using var db = await _dbContextFactory.CreateDbContextAsync(cancellationToken);
//         var list = await db.Families
//             .Where(f => keys.Contains(f.Id))
//             .Include(f => f.FamilyUsers)
//             .SelectMany(f => f.FamilyUsers.Where(fu => fu.Kind.Equals(FamilyUserKind.Child)))
//             .Include(fu => fu.User)
//             .ToListAsync(cancellationToken);
//
//         return list.ToLookup(fu => fu.FamilyId, fu => fu.User!);
//     }
// }
