using Chlupikometr.System.Auth.JWT;
using Chlupikometr.System.GraphQL;
using Google.Apis.Auth;
using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.System.Auth.GraphQL.Google;

[ExtendObjectType(typeof(Mutation))]
public class GoogleSignInMutation
{
    public async Task<LongLivedTokenPayload> GoogleSignIn(
        string idToken,
        AppDbContext db,
        [Service]JwtTokenFactory jwtTokenFactory,
        CancellationToken cancellationToken)
    {
        GoogleJsonWebSignature.Payload auth;
        try
        {
            auth = await GoogleJsonWebSignature.ValidateAsync(idToken);
        }
        catch (InvalidJwtException e)
        {
            return new LongLivedTokenPayload(new[]
                { new UserError(e.Message, UserError.Unauthenticated) });
        }

        var user = await db.Users
            .Where(u => u.Email!.Equals(auth.Email))
            .FirstOrDefaultAsync(cancellationToken);
        if (user == null)
        {
            user = new User.Entity.User
            {
                Email = auth.Email,
            };
            db.Add((object)user);
        }

        user.Name = auth.Name;
        user.PictureUrl = auth.Picture;
        await db.SaveChangesAsync(cancellationToken);

        var token = jwtTokenFactory.Create(user.Id, 60 * 24 * 3600);

        return new LongLivedTokenPayload(token);
    }
}
