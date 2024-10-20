namespace Chlupikometr.System.GraphQL;

public abstract class Payload
{
    protected Payload(IReadOnlyList<UserError>? errors = null)
    {
        Errors = errors ?? new List<UserError>();
    }

    public IReadOnlyList<UserError> Errors { get; }
}

public class ConfirmationPayload : Payload
{
    public ConfirmationPayload(IReadOnlyList<UserError>? errors = null) : base(errors)
    {
    }
}
