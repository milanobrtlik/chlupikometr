namespace Chlupikometr.User.GraphQL.Child;

public record ChildCreateInput(
    string Name,
    IFile Picture
);

public record ChildUpdateInput(
    int ChildId,
    Optional<string?> Name,
    Optional<IFile?> Picture
);
