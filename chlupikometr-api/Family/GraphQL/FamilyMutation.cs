using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Chlupikometr.Family.Entity;
using Chlupikometr.System.GraphQL;
using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;

namespace Chlupikometr.Family.GraphQL;

[ExtendObjectType(typeof(Mutation))]
public class FamilyMutation
{
    [Authorize]
    public async Task<FamilyPayload> FamilyCreate(
        FamilyCreateInput input,
        [GlobalState] int currentUserId,
        AppDbContext dbContext,
        CancellationToken ct)
    {
        var family = new Entity.Family
        {
            Name = input.Name,
        };

        var familyUser = new FamilyUser
        {
            Family = family,
            UserId = currentUserId,
            Kind = FamilyUserKind.Founder,
        };

        dbContext.Add(family);
        dbContext.Add(familyUser);
        
        await dbContext.SaveChangesAsync(ct);

        return new FamilyPayload(family);
    }

    [Authorize(Policy = "RoleParent")]
    public async Task<string?> FamilyUserInvite(
        int familyId,
        FamilyUserKind kind,
        [Service] IConfiguration configuration)
    {
        var secret = configuration.GetSection("JwtSecret").Value;
        var bytes = Encoding.UTF8.GetBytes(secret);
        var subject = new ClaimsIdentity(new Claim[]
        {
            new(ClaimTypes.Role, kind.ToString()),
            new(ClaimTypes.SerialNumber, familyId.ToString()),
        });
        var tokenDescriptor = new SecurityTokenDescriptor
        {
            Subject = subject,
            Expires = DateTime.Now.AddMinutes(5),
            SigningCredentials = new SigningCredentials(
                new SymmetricSecurityKey(bytes),
                SecurityAlgorithms.HmacSha256Signature
            ),
        };

        var tokenHandler = new JwtSecurityTokenHandler();
        var token = tokenHandler.CreateToken(tokenDescriptor);
        var tokenStr = tokenHandler.WriteToken(token);

        return tokenStr;
    }

    [Authorize]
    public async Task<ConfirmationPayload> JoinFamily(
        string token,
        [GlobalState] int currentUserId,
        [Service] IConfiguration configuration,
        AppDbContext db,
        CancellationToken ct)
    {
        var key = configuration.GetSection("JwtSecret").Value;
        var bytes = Encoding.UTF8.GetBytes(key);
        var parameters = new TokenValidationParameters
        {
            ValidateIssuerSigningKey = true,
            IssuerSigningKey = new SymmetricSecurityKey(bytes),
            ValidateIssuer = false,
            ValidateAudience = false
        };
        var tokenHandler = new JwtSecurityTokenHandler();
        try
        {
            tokenHandler.ValidateToken(token, parameters, out var validatedToken);
        }
        catch
        {
            return new ConfirmationPayload(new[] { new UserError("Unauthenticated", UserError.Unauthenticated) });
        }

        var securityToken = tokenHandler.ReadToken(token) as JwtSecurityToken;
        var role = securityToken!.Claims.First(c => c.Type.Equals("role")).Value;
        var familyId = int.Parse(securityToken.Claims.First(c => c.Type.Equals("certserialnumber")).Value);
        Enum.TryParse(role, out FamilyUserKind kind);

        var familyUser = new FamilyUser
        {
            FamilyId = familyId,
            UserId = currentUserId,
            Kind = kind,
        };

        db.Add(familyUser);
        try
        {
            await db.SaveChangesAsync(ct);
        }
        catch
        {
            // ignored
        }

        return new ConfirmationPayload();
    }

    [Authorize(Policy = "RoleParent")]
    public async Task<ConfirmationPayload> RemoveUserFromFamily(
        int familyId,
        int userId,
        AppDbContext db,
        CancellationToken ct)
    {
        var familyUser = await db
            .FamilyUsers
            .Where(fu => fu.FamilyId.Equals(familyId))
            .Where(fu => fu.UserId.Equals(userId))
            .FirstOrDefaultAsync(ct);
        if (familyUser is null)
            return new ConfirmationPayload(new[]
                { new UserError($"There i no user #{userId} in this family.", UserError.NotFound) });

        db.Remove(familyUser);
        await db.SaveChangesAsync(ct);

        return new ConfirmationPayload();
    }

    [Authorize(Policy = "RoleMember")]
    public async Task<ConfirmationPayload> LeaveFamily(
        int familyId,
        [GlobalState] int currentUserId,
        AppDbContext db,
        CancellationToken ct)
    {
        var familyUser = await db
            .FamilyUsers
            .Include(fu => fu.Family)
            .Where(fu => fu.FamilyId.Equals(familyId))
            .Where(fu => fu.UserId.Equals(currentUserId))
            .FirstAsync(ct);

        var iAmFounder = familyUser.Kind.Equals(FamilyUserKind.Founder);
        var membersCount = await db
            .FamilyUsers
            .Where(fu => fu.FamilyId.Equals(familyId))
            .CountAsync(ct);
        if (iAmFounder && membersCount > 1)
        {
            return new ConfirmationPayload(new[]
                { new UserError("This family contains some other users, you can leave as the last one.", "FOUNDER_CANNOT_LEAVE") });
        }

        db.Remove(familyUser);
        await db.SaveChangesAsync(ct);

        return new ConfirmationPayload();
    }

    [Authorize(Policy = "RoleFounder")]
    public async Task<ConfirmationPayload> RemoveFamily(
        int familyId,
        AppDbContext db,
        CancellationToken ct)
    {
        var family = db
            .Families
            .Where(f => f.Id.Equals(familyId))
            .First();

        db.Remove(family);
        await db.SaveChangesAsync(ct);

        return new ConfirmationPayload();
    }

    [Authorize(Policy = "RoleFounder")]
    public async Task<FamilyPayload> RenameFamily(
        int familyId,
        string newName,
        AppDbContext db,
        CancellationToken ct)
    {
        var family = await db
            .Families
            .Where(f => f.Id.Equals(familyId))
            .FirstAsync(ct);

        family.Name = newName;

        await db.SaveChangesAsync(ct);

        return new FamilyPayload(family);
    }
}
