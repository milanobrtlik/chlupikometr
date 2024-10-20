using System.Security.Claims;
using Chlupikometr.Family.Entity;
using HotChocolate.Resolvers;
using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.Family.Roles;

public class FamilyRoleAtLeastOneOfRequirement : IAuthorizationRequirement
{
    public FamilyRoleAtLeastOneOfRequirement(List<FamilyUserKind> familyRoles)
        => FamilyRoles = familyRoles;

    public List<FamilyUserKind> FamilyRoles { get; }
}

public class FamilyRoleHandler : AuthorizationHandler<FamilyRoleAtLeastOneOfRequirement, IResolverContext>
{
    private readonly IDbContextFactory<AppDbContext> _dbContextFactory;

    public FamilyRoleHandler(IDbContextFactory<AppDbContext> dbContextFactory)
    {
        _dbContextFactory = dbContextFactory;
    }

    protected override Task HandleRequirementAsync(
        AuthorizationHandlerContext context,
        FamilyRoleAtLeastOneOfRequirement requirement,
        IResolverContext resource)
    {
        var familyIdNode = resource
            .Selection
            .SyntaxNode
            .Arguments
            .Where(a => a.Name.Value.Equals("familyId"))
            .FirstOrDefault()
            ;
        if (familyIdNode is null)
        {
            throw new Exception("Missing familyId argument.");
        }
        var familyId = (string)familyIdNode.Value.Value!;
        if (int.TryParse(familyId, out var familyIdInt) == false)
        {
            if (resource.Variables.TryGetVariable("familyId", out familyIdInt) == false)
            {
                throw new Exception("Missing familyId argument.");
            }
        }
        var userId = int.Parse(context.User.FindFirstValue(ClaimTypes.NameIdentifier));
        using var db = _dbContextFactory.CreateDbContext();

        var check = db.Families
            .Where(f => f.Id.Equals(familyIdInt))
            .Include(f => f.FamilyUsers)
            .SelectMany(f =>
                f.FamilyUsers.Where(fu => fu.UserId.Equals(userId) && requirement.FamilyRoles.Contains(fu.Kind)))
            .Include(fu => fu.User)
            .Select(fu => fu.User)
            .FirstOrDefault();

        if (check is not null)
        {
            context.Succeed(requirement);
        }
        
        return Task.CompletedTask;
    }
}
