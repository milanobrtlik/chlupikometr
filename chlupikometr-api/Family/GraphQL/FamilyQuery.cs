using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.Family.GraphQL;

[ExtendObjectType(typeof(Query))]
public class FamilyQuery
{
    [Authorize]
    public IQueryable<Entity.Family> Families(
        [GlobalState] int currentUserId,
        AppDbContext db)
    {
        return db
            .Families
            .Include(f => f.FamilyUsers)
            .Where(f => f.FamilyUsers.Any(fu => fu.UserId.Equals(currentUserId)))
        ;
    }
}
