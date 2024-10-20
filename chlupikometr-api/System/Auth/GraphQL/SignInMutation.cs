using Chlupikometr.System.Auth.JWT;
using Microsoft.AspNetCore.Authorization;

namespace Chlupikometr.System.Auth.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class SignInMutation
{
    [Authorize]
    public async Task<ShortLivedTokenPayload> GetShortLivedToken(
        [GlobalState] int currentUserId,
        [Service] JwtTokenFactory jwtTokenFactory
    ) => new ShortLivedTokenPayload(jwtTokenFactory.Create(currentUserId));
}
