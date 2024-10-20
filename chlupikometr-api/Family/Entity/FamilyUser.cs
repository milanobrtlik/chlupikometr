namespace Chlupikometr.Family.Entity;

public enum FamilyUserKind
{
    Founder,
    Parent,
    Babysitter,
    Child,
}

public class FamilyUser
{
    [GraphQLIgnore] public int FamilyId { get; set; }
    public Family? Family { get; set; }

    [GraphQLIgnore] public int UserId { get; set; }
    [GraphQLIgnore] public User.Entity.User? User { get; set; }

    public FamilyUserKind Kind { get; set; }
}
