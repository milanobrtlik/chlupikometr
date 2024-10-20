using Chlupikometr.Family.GraphQL;

namespace Chlupikometr.User.GraphQL.Me;

public class MeType : ObjectType
{
    protected override void Configure(IObjectTypeDescriptor descriptor)
    {
        descriptor.Name("Me");
        
        descriptor.Field("id")
            .Type<NonNullType<IntType>>()
            .Resolve(ctx => ctx.Parent<Entity.User>().Id);

        descriptor.Field("email")
            .Type<NonNullType<StringType>>()
            .Resolve(ctx => ctx.Parent<Entity.User>().Email);
        
        descriptor.Field("name")
            .Type<NonNullType<StringType>>()
            .Resolve(ctx => ctx.Parent<Entity.User>().Name);
        
        descriptor.Field("pictureUrl")
            .Type<NonNullType<StringType>>()
            .Resolve(ctx => ctx.Parent<Entity.User>().PictureUrl);

        descriptor.Field("familyUser")
            .Type<ListType<NonNullType<FamilyUserType>>>()
            .Resolve(ctx => ctx.Parent<Entity.User>().FamilyUser);
    }
}
