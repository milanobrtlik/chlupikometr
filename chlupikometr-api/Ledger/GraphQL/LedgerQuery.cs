using Chlupikometr.System.GraphQL;
using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.Ledger.GraphQL;

[ExtendObjectType(typeof(Query))]
public class LedgerQuery
{
    [Authorize(Policy = "RoleBabysitter")]
    [UseFiltering(Type = typeof(LedgerFilterInput))]
    [UseSorting(Type = typeof(LedgerSortInput))]
    public IQueryable<Entity.Ledger> LedgerList(
        int familyId,
        AppDbContext db
    ) => db
        .Ledgers
        .Where(ledger => ledger.FamilyId.Equals(familyId));

    [Authorize(Policy = "RoleBabysitter")]
    public async Task<LedgerPayload> LedgerDetailAsync(
        int familyId,
        int id,
        AppDbContext db,
        CancellationToken ct)
    {
        var ledger = await db
            .Ledgers
            .Where(l => l.FamilyId.Equals(familyId))
            .Where(l => l.Id.Equals(id))
            .FirstOrDefaultAsync(ct);

        if (ledger is null)
        {
            return new LedgerPayload(new[] { new UserError($"Ledger#{id} detail not found.", UserError.NotFound) });
        }

        return new LedgerPayload(ledger);
    }
}
