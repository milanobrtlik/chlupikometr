using Chlupikometr;
using Chlupikometr.Family.Dataloader;
using Chlupikometr.Family.Entity;
using Chlupikometr.Family.GraphQL;
using Chlupikometr.Family.Roles;
using Chlupikometr.Inventory.Dataloader;
using Chlupikometr.Inventory.GraphQL;
using Chlupikometr.Ledger.Dataloader;
using Chlupikometr.Ledger.GraphQL;
using Chlupikometr.System.Auth.GraphQL;
using Chlupikometr.System.Auth.GraphQL.Google;
using Chlupikometr.System.Auth.JWT;
using Chlupikometr.System.File.GraphQL;
using Chlupikometr.System.File.S3;
using Chlupikometr.User.Dataloader;
using Chlupikometr.User.GraphQL;
using Chlupikometr.User.GraphQL.Child;
using Chlupikometr.User.GraphQL.Me;
using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);
builder.WebHost.UseSentry();

builder.Services.AddAuthorization(o =>
{
    o.AddPolicy("RoleBabysitter", p => p.Requirements.Add(new FamilyRoleAtLeastOneOfRequirement(
        new List<FamilyUserKind> { FamilyUserKind.Founder, FamilyUserKind.Parent, FamilyUserKind.Babysitter })));
    o.AddPolicy("RoleParent", p => p.Requirements.Add(new FamilyRoleAtLeastOneOfRequirement(
        new List<FamilyUserKind> { FamilyUserKind.Founder, FamilyUserKind.Parent })));
    o.AddPolicy("RoleMember", p => p.Requirements.Add(new FamilyRoleAtLeastOneOfRequirement(
        new List<FamilyUserKind> { FamilyUserKind.Founder, FamilyUserKind.Parent, FamilyUserKind.Babysitter, FamilyUserKind.Child })));
    o.AddPolicy("RoleFounder", p => p.Requirements.Add(new FamilyRoleAtLeastOneOfRequirement(
        new List<FamilyUserKind> { FamilyUserKind.Founder })));
});

builder.Services.AddSingleton<IAuthorizationHandler, FamilyRoleHandler>();
builder.Services.AddSingleton<S3Uploader>();

builder.Services.AddPooledDbContextFactory<AppDbContext>(
    options => options
        .UseNpgsql(builder.Configuration.GetConnectionString("default"))
        .UseSnakeCaseNamingConvention()
);

builder.Services.AddHttpContextAccessor();
JwtConfigurator.Configure(builder.Services, builder.Configuration);

builder.Services.AddCors();

var graphQlServer = builder.Services.AddGraphQLServer()
    .AddFiltering()
    .AddSorting()
    .AddAuthorization()
    .AddHttpRequestInterceptor<CurrentUserIdInterceptor>()
    .RegisterDbContext<AppDbContext>(DbContextKind.Pooled)
    .AddQueryType<Query>()
    .AddMutationType<Mutation>()
    
    // Family
    .AddType<FamilyType>()
    .AddType<FamilyUserType>()
    .AddTypeExtension<FamilyQuery>()
    .AddTypeExtension<FamilyMutation>()
    .AddDataLoader<FamilyByIdDataloader>()

    // User
    .AddTypeExtension<UserQuery>()
    .AddTypeExtension<UserMutation>()
    .AddType<UserType>()
    .AddType<MeType>()
    .AddDataLoader<PointsByUserIdDataloader>()
    .AddDataLoader<UserByIdDataloader>()
    .AddTypeExtension<MeQuery>()
    
    // Children
    .AddTypeExtension<ChildrenQuery>()
    .AddTypeExtension<ChildMutation>()
    
    // Inventory
    .AddTypeExtension<InventoryQuery>()
    .AddTypeExtension<InventoryMutation>()
    .AddType<InventoryType>()
    .AddDataLoader<InventoryLevelByInventoryIdDataloader>()

    // Ledger
    .AddTypeExtension<LedgerQuery>()
    .AddTypeExtension<LedgerMutation>()
    .AddType<LedgerType>()
    .AddDataLoader<InventorySnapshotByLedgerIdDataloader>()

    // System -> File
    .AddType<FileType>()
    .AddType<UploadType>()

    // System -> Auth
    .AddTypeExtension<SignInMutation>()
    .AddTypeExtension<GoogleSignInMutation>()
    ;

if (builder.Environment.IsDevelopment())
{
    // graphQlServer.AddTypeExtension<DevMutation>();
}

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
}

app.UseRouting();

app.UseSentryTracing();

app.UseAuthentication();

app.UseEndpoints(x => x.MapGraphQL());

using (var scope = app.Services.CreateScope())
{
    var factory = scope.ServiceProvider.GetRequiredService<IDbContextFactory<AppDbContext>>();
    factory.CreateDbContext().Database.Migrate();
}

app.Run();
