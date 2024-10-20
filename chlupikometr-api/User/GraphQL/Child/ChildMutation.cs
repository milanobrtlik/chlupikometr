using Chlupikometr.Family.Entity;
using Chlupikometr.System.File.S3;
using Chlupikometr.System.GraphQL;
using HotChocolate.Authorization;
using Microsoft.EntityFrameworkCore;

namespace Chlupikometr.User.GraphQL.Child;

[ExtendObjectType(typeof(Mutation))]
public class ChildMutation
{
    [Authorize(Policy = "RoleParent")]
    public async Task<ChildPayload> ChildCreate(
        int familyId,
        ChildCreateInput input,
        AppDbContext db,
        [Service] S3Uploader s3Uploader,
        CancellationToken ct)
    {
        var child = new Entity.User
        {
            Name = input.Name,
            PictureUrl = await s3Uploader.UploadChildPictureAsync(input.Picture.OpenReadStream(), ct),
        };
        db.Add(child);
        var familyUser = new FamilyUser
        {
            FamilyId = familyId,
            User = child,
            Kind = FamilyUserKind.Child
        };
        db.Add(familyUser);
        await db.SaveChangesAsync(ct);

        return new ChildPayload(child);
    }

    [Authorize(Policy = "RoleParent")]
    public async Task<ChildPayload> ChildUpdate(
        int familyId,
        ChildUpdateInput input,
        AppDbContext db,
        [Service] S3Uploader s3Uploader,
        CancellationToken ct
    )
    {
        Entity.User child;
        try
        {
            child = await db
                .Families
                .Where(f => f.Id.Equals(familyId))
                .Include(f => f.FamilyUsers)
                .SelectMany(f =>
                    f.FamilyUsers.Where(fu => fu.UserId.Equals(input.ChildId) && fu.Kind.Equals(FamilyUserKind.Child)))
                .Include(fu => fu.User)
                .Select(fu => fu.User!)
                .FirstAsync(ct);
        }
        catch (InvalidOperationException)
        {
            return new ChildPayload(new[] { new UserError($"Child #{input.ChildId} not found.", UserError.NotFound) });
        }

        if (input.Name.HasValue) child.Name = input.Name.Value!;
        if (input.Picture.HasValue)
        {
            await s3Uploader.DeleteChildPictureAsync(child, ct);
            child.PictureUrl = await s3Uploader.UploadChildPictureAsync(input.Picture.Value!.OpenReadStream(), ct);
        }

        await db.SaveChangesAsync(ct);

        return new ChildPayload(child);
    }
}
