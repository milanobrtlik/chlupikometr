using System.Text;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;

namespace Chlupikometr.System.Auth.JWT;

public class JwtConfigurator
{
    public static void Configure(IServiceCollection services, IConfiguration configuration)
    {
        var secret = configuration.GetSection("JwtSecret").Value;
        var bytes =  Encoding.UTF8.GetBytes(secret);
        services.AddAuthentication(options =>
        {
            options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
            options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
        }).AddJwtBearer(options =>
        {
            options.TokenValidationParameters = new TokenValidationParameters
            {
                ValidateIssuerSigningKey = true,
                IssuerSigningKey = new SymmetricSecurityKey(bytes),
                ValidateIssuer = false,
                ValidateAudience = false
            };
            options.RequireHttpsMetadata = false;
            options.SaveToken = true;
        });

        services.AddTransient<JwtTokenFactory>();
    }
}
