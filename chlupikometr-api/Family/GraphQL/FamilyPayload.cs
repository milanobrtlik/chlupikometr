using Chlupikometr.System.GraphQL;

namespace Chlupikometr.Family.GraphQL;

public class FamilyPayload : Payload
{
    public FamilyPayload(Entity.Family family) : base(new List<UserError>())
    {
        Family = family;
    }

    public FamilyPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public Entity.Family? Family { get; }
}

public class GenerateFamilyInvitationPayload : Payload
{
    public GenerateFamilyInvitationPayload(string token) : base(new List<UserError>())
    {
        Token = token;
    }

    public GenerateFamilyInvitationPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public string? Token { get; set; }
}
