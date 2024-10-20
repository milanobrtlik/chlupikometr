using Chlupikometr.Family.Entity;
using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.User.GraphQL;

[ExtendObjectType(typeof(Query))]
public class UserQuery
{
    [Authorize(Policy = "RoleParent")]
    public async Task<List<Entity.User>> Parents(
        int familyId,
        AppDbContext db,
        CancellationToken ct
    )
    {
        return await db
            .Families
            .Where(f => f.Id.Equals(familyId))
            .Include(f => f.FamilyUsers)
            .SelectMany(f => f.FamilyUsers.Where(fu =>
                new List<FamilyUserKind> { FamilyUserKind.Founder, FamilyUserKind.Parent }.Contains(fu.Kind)))
            .Select(fu => fu.User!)
            .ToListAsync(ct);
    }

    [Authorize(Policy = "RoleParent")]
    public async Task<List<Entity.User>> Babysitters(
        int familyId,
        AppDbContext db,
        CancellationToken ct
    )
    {
        return await db
            .Families
            .Where(f => f.Id.Equals(familyId))
            .Include(f => f.FamilyUsers)
            .SelectMany(f => f.FamilyUsers.Where(fu => fu.Kind.Equals(FamilyUserKind.Babysitter)))
            .Select(fu => fu.User!)
            .ToListAsync(ct);
    }
}
