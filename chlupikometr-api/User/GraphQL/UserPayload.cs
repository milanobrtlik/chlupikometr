using Chlupikometr.System.GraphQL;

namespace Chlupikometr.User.GraphQL;

public class UserPayload : Payload
{
    public UserPayload(Entity.User me) : base(new List<UserError>())
    {
        Me = me;
    }

    public UserPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public Entity.User? Me { get; }
}
