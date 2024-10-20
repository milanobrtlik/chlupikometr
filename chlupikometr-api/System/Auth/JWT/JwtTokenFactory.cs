using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Microsoft.IdentityModel.Tokens;

namespace Chlupikometr.System.Auth.JWT;

public class JwtTokenFactory
{
    private readonly IConfiguration _configuration;

    public JwtTokenFactory(IConfiguration configuration)
    {
        _configuration = configuration;
    }

    public string Create(int userId, long? expirationTimeSeconds = null)
    {
        var identity = new ClaimsIdentity(new Claim[]
        {
            new(ClaimTypes.NameIdentifier, userId.ToString())
        });

        var secret = _configuration.GetSection("JwtSecret").Value;
        var bytes = Encoding.UTF8.GetBytes(secret);
        var tokenDescriptor = new SecurityTokenDescriptor
        {
            Subject = identity,
            Expires = DateTime.UtcNow.AddSeconds(expirationTimeSeconds ?? 300),
            SigningCredentials = new SigningCredentials(
                new SymmetricSecurityKey(bytes),
                SecurityAlgorithms.HmacSha256Signature
            )
        };
        var tokenHandler = new JwtSecurityTokenHandler();
        var token = tokenHandler.CreateToken(tokenDescriptor);
        
        return tokenHandler.WriteToken(token);
    }
}
