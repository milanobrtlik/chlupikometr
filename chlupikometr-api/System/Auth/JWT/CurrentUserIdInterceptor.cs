using System.Security.Claims;
using HotChocolate.AspNetCore;
using HotChocolate.Execution;

namespace Chlupikometr.System.Auth.JWT;

public class CurrentUserIdInterceptor : DefaultHttpRequestInterceptor
{
    public override ValueTask OnCreateAsync(
        HttpContext context,
        IRequestExecutor requestExecutor,
        IQueryRequestBuilder requestBuilder,
        CancellationToken cancellationToken)
    {
        if (context.User.Identity is not { IsAuthenticated: true })
        {
            return base.OnCreateAsync(context, requestExecutor, requestBuilder, cancellationToken);
        }

        requestBuilder.SetProperty("currentUserId", int.Parse(context.User.FindFirstValue(ClaimTypes.NameIdentifier)));
        
        return base.OnCreateAsync(context, requestExecutor, requestBuilder, cancellationToken);
    }
}
