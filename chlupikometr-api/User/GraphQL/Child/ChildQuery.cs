using Chlupikometr.Family.Entity;
using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.User.GraphQL.Child;

public class ChildrenQuery : ObjectTypeExtension<Query>
{
    protected override void Configure(IObjectTypeDescriptor<Query> descriptor)
    {
        descriptor.Field("children")
            .Authorize()
            .Argument("familyId", a => a.Type<NonNullType<IntType>>())
            .Type<NonNullType<ListType<NonNullType<ChildType>>>>()
            .ResolveWith<ChildrenResolvers>(r => r.GetChildren(default!, default!));
    }
}

internal class ChildrenResolvers
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public ChildrenResolvers(IDbContextFactory<AppDbContext> dbContextFactory)
    {
        _dbContextFactory = dbContextFactory ?? throw new ArgumentNullException(nameof(dbContextFactory));
    }

    [Authorize(Policy = "RoleBabysitter")]
    public async Task<List<Entity.User>> GetChildren(
        int familyId,
        CancellationToken ct
    )
    {
        await using var db = await _dbContextFactory.CreateDbContextAsync(ct);

        return await db.Families
            .Where(f => f.Id.Equals(familyId))
            .Include(f => f.FamilyUsers)
            .SelectMany(f => f.FamilyUsers.Where(fu => fu.Kind.Equals(FamilyUserKind.Child)))
            .Include(fu => fu.User)
            .Select(fu => fu.User!)
            .OrderBy(user => user.Id)
            .ToListAsync(ct);
    }
}
