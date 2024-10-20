using Chlupikometr.System.GraphQL;

namespace Chlupikometr.System.Auth.GraphQL;

public class ShortLivedTokenPayload : Payload
{
    public ShortLivedTokenPayload(string shortLivedToken) : base(new List<UserError>())
    {
        ShortLivedToken = shortLivedToken;
    }

    public ShortLivedTokenPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public string? ShortLivedToken { get; }
}


public class LongLivedTokenPayload : Payload
{
    public LongLivedTokenPayload(string longLivedToken) : base(new List<UserError>())
    {
        LongLivedToken = longLivedToken;
    }

    public LongLivedTokenPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public string? LongLivedToken { get; }
}
