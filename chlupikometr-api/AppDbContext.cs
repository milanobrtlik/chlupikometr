using Chlupikometr.Family.Entity;
using Chlupikometr.Inventory.Entity;
using Chlupikometr.Ledger.Entity;
using Microsoft.EntityFrameworkCore;
using Npgsql;

namespace Chlupikometr;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions options) : base(options)
    {
        NpgsqlConnection.GlobalTypeMapper.MapEnum<FamilyUserKind>();
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.HasPostgresEnum<FamilyUserKind>();

        modelBuilder
            .Entity<FamilyUser>()
            .HasKey(fu => new { fu.FamilyId, fu.UserId });
    }

    public DbSet<User.Entity.User> Users { get; set; } = default!;
    public DbSet<Family.Entity.Family> Families { get; set; } = default!;
    public DbSet<Inventory.Entity.Inventory> Inventories { get; set; } = default!;
    public DbSet<InventoryLevel> InventoryLevels { get; set; } = default!;
    public DbSet<Ledger.Entity.Ledger> Ledgers { get; set; } = default!;
    public DbSet<InventorySnapshot> InventorySnapshots { get; set; } = default!;
    public DbSet<FamilyUser> FamilyUsers { get; set; } = default!;
}
