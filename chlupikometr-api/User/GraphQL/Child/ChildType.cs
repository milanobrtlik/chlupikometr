using Chlupikometr.User.Dataloader;

namespace Chlupikometr.User.GraphQL.Child;

public class ChildType : ObjectType
{
    protected override void Configure(IObjectTypeDescriptor descriptor)
    {
        descriptor.Name("Child");

        descriptor.Field("id")
            .Type<NonNullType<IntType>>()
            .Resolve(ctx => ctx.Parent<Entity.User>().Id);

        descriptor.Field("name")
            .Type<NonNullType<StringType>>()
            .Resolve(ctx => ctx.Parent<Entity.User>().Name);

        descriptor.Field("pictureUrl")
            .Type<StringType>()
            .Resolve(ctx => ctx.Parent<Entity.User>().PictureUrl);

        descriptor.Field("points")
            .Type<NonNullType<IntType>>()
            .ResolveWith<ChildResolvers>(r => r.GetPoints(default!, default!, default!));
    }
}

internal class ChildResolvers
{
    public async Task<int> GetPoints(
        [Parent] Entity.User user,
        PointsByUserIdDataloader dataloader,
        CancellationToken cancellationToken
    ) => await dataloader.LoadAsync(user.Id, cancellationToken);
}
