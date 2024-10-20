using Chlupikometr.System.GraphQL;

namespace Chlupikometr.Ledger.GraphQL;

public class LedgerPayload : Payload
{
    public LedgerPayload(Entity.Ledger ledger) : base(new List<UserError>())
    {
        Ledger = ledger;
    }

    public LedgerPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public Entity.Ledger? Ledger { get; }
}
