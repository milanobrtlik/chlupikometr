using Chlupikometr.System.Auth.JWT;

namespace Chlupikometr.User.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class DevMutation
{
    public string AdminLogin(
        int userId,
        [Service] JwtTokenFactory jwtTokenFactory) =>
        jwtTokenFactory.Create(userId, DateTimeOffset.Now.ToUnixTimeSeconds() + 365 * 86400);
}
