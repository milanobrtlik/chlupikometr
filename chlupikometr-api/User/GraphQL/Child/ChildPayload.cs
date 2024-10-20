using Chlupikometr.System.GraphQL;

namespace Chlupikometr.User.GraphQL.Child;

public class ChildPayload : Payload
{
    public ChildPayload(Entity.User? child)
    {
        Child = child;
    }

    public ChildPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    [GraphQLType(typeof(ChildType))]
    public Entity.User? Child { get; }
}
