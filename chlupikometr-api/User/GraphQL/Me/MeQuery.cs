using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.User.GraphQL.Me;

public class MeQuery : ObjectTypeExtension<Query>
{
    [Authorize]
    protected override void Configure(IObjectTypeDescriptor<Query> descriptor)
    {
        descriptor.Field("me")
            .Type<NonNullType<MeType>>()
            .ResolveWith<MeResolvers>(r => r.ResolveUser(default!, default));
    }
}

internal class MeResolvers
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public MeResolvers(IDbContextFactory<AppDbContext> dbContextFactory)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    public async Task<Entity.User> ResolveUser(
        [GlobalState] int currentUserId,
        CancellationToken ct
    )
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(ct);

        return await db
            .Users
            .Where(u => u.Id.Equals(currentUserId))
            .Include(u => u.FamilyUser)
            .ThenInclude(fu => fu.Family)
            .FirstAsync(ct);
    }
}
