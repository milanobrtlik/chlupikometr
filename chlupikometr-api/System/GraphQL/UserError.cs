namespace Chlupikometr.System.GraphQL;

public record UserError(string Message, string Code)
{
    public const string NotFound = "NOT_FOUND";
    public const string InvalidArgument = "INVALID_ARGUMENT";
    public const string Unauthenticated = "UNAUTHENTICATED";
    public const string Unauthorized = "UNAUTHORIZED";
};
