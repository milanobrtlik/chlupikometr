﻿// <auto-generated />
using System;
using Chlupikometr;
using Chlupikometr.Family.Entity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace Chlupikometr.Migrations
{
    [DbContext(typeof(AppDbContext))]
    [Migration("20220904213243_v5")]
    partial class v5
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.8")
                .HasAnnotation("Relational:MaxIdentifierLength", 63);

            NpgsqlModelBuilderExtensions.HasPostgresEnum(modelBuilder, "family_user_kind", new[] { "parent", "child" });
            NpgsqlModelBuilderExtensions.UseIdentityByDefaultColumns(modelBuilder);

            modelBuilder.Entity("Chlupikometr.Family.Entity.Family", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(255)
                        .HasColumnType("character varying(255)")
                        .HasColumnName("name");

                    b.HasKey("Id")
                        .HasName("pk_families");

                    b.ToTable("families", (string)null);
                });

            modelBuilder.Entity("Chlupikometr.Family.Entity.FamilyUser", b =>
                {
                    b.Property<int>("FamilyId")
                        .HasColumnType("integer")
                        .HasColumnName("family_id");

                    b.Property<int>("UserId")
                        .HasColumnType("integer")
                        .HasColumnName("user_id");

                    b.Property<FamilyUserKind>("Kind")
                        .HasColumnType("family_user_kind")
                        .HasColumnName("kind");

                    b.HasKey("FamilyId", "UserId")
                        .HasName("pk_family_user");

                    b.HasIndex("UserId")
                        .HasDatabaseName("ix_family_user_user_id");

                    b.ToTable("family_user", (string)null);
                });

            modelBuilder.Entity("Chlupikometr.Inventory.Entity.Inventory", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("description");

                    b.Property<int?>("FamilyId")
                        .HasColumnType("integer")
                        .HasColumnName("family_id");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasMaxLength(255)
                        .HasColumnType("character varying(255)")
                        .HasColumnName("title");

                    b.Property<int>("Version")
                        .HasColumnType("integer")
                        .HasColumnName("version");

                    b.HasKey("Id")
                        .HasName("pk_inventory");

                    b.HasIndex("FamilyId")
                        .HasDatabaseName("ix_inventory_family_id");

                    b.ToTable("inventory", (string)null);
                });

            modelBuilder.Entity("Chlupikometr.Inventory.Entity.InventoryLevel", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<int>("InventoryId")
                        .HasColumnType("integer")
                        .HasColumnName("inventory_id");

                    b.Property<bool>("IsInitial")
                        .HasColumnType("boolean")
                        .HasColumnName("is_initial");

                    b.Property<int>("Reward")
                        .HasColumnType("integer")
                        .HasColumnName("reward");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("title");

                    b.HasKey("Id")
                        .HasName("pk_inventory_level");

                    b.HasIndex("InventoryId")
                        .HasDatabaseName("ix_inventory_level_inventory_id");

                    b.ToTable("inventory_Level");
                });

            modelBuilder.Entity("Chlupikometr.Ledger.Entity.InventorySnapshot", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("description");

                    b.Property<int>("InventoryId")
                        .HasColumnType("integer")
                        .HasColumnName("inventory_id");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasMaxLength(255)
                        .HasColumnType("character varying(255)")
                        .HasColumnName("title");

                    b.Property<int>("Version")
                        .HasColumnType("integer")
                        .HasColumnName("version");

                    b.HasKey("Id")
                        .HasName("pk_inventory_snapshots");

                    b.HasIndex("InventoryId")
                        .HasDatabaseName("ix_inventory_snapshots_inventory_id");

                    b.ToTable("inventory_snapshots", (string)null);
                });

            modelBuilder.Entity("Chlupikometr.Ledger.Entity.Ledger", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<int?>("ChildId")
                        .HasColumnType("integer")
                        .HasColumnName("child_id");

                    b.Property<DateTime>("EnteredAt")
                        .HasColumnType("timestamp with time zone")
                        .HasColumnName("entered_at");

                    b.Property<int?>("FamilyId")
                        .HasColumnType("integer")
                        .HasColumnName("family_id");

                    b.Property<int?>("InventorySnapshotId")
                        .HasColumnType("integer")
                        .HasColumnName("inventory_snapshot_id");

                    b.Property<int?>("ParentId")
                        .HasColumnType("integer")
                        .HasColumnName("parent_id");

                    b.Property<string>("ParentNote")
                        .HasColumnType("text")
                        .HasColumnName("parent_note");

                    b.Property<int>("Reward")
                        .HasColumnType("integer")
                        .HasColumnName("reward");

                    b.HasKey("Id")
                        .HasName("pk_ledger");

                    b.HasIndex("ChildId")
                        .HasDatabaseName("ix_ledger_child_id");

                    b.HasIndex("FamilyId")
                        .HasDatabaseName("ix_ledger_family_id");

                    b.HasIndex("InventorySnapshotId")
                        .HasDatabaseName("ix_ledger_inventory_snapshot_id");

                    b.HasIndex("ParentId")
                        .HasDatabaseName("ix_ledger_parent_id");

                    b.ToTable("ledger", (string)null);
                });

            modelBuilder.Entity("Chlupikometr.User.Entity.User", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("Email")
                        .HasMaxLength(255)
                        .HasColumnType("character varying(255)")
                        .HasColumnName("email");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(255)
                        .HasColumnType("character varying(255)")
                        .HasColumnName("name");

                    b.Property<string>("PictureUrl")
                        .HasColumnType("text")
                        .HasColumnName("picture_url");

                    b.HasKey("Id")
                        .HasName("pk_user");

                    b.ToTable("user", (string)null);
                });

            modelBuilder.Entity("Chlupikometr.Family.Entity.FamilyUser", b =>
                {
                    b.HasOne("Chlupikometr.Family.Entity.Family", "Family")
                        .WithMany("FamilyUsers")
                        .HasForeignKey("FamilyId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_family_user_families_family_id");

                    b.HasOne("Chlupikometr.User.Entity.User", "User")
                        .WithMany("FamilyUser")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_family_user_user_user_id");

                    b.Navigation("Family");

                    b.Navigation("User");
                });

            modelBuilder.Entity("Chlupikometr.Inventory.Entity.Inventory", b =>
                {
                    b.HasOne("Chlupikometr.Family.Entity.Family", "Family")
                        .WithMany()
                        .HasForeignKey("FamilyId")
                        .HasConstraintName("fk_inventory_families_family_id");

                    b.Navigation("Family");
                });

            modelBuilder.Entity("Chlupikometr.Inventory.Entity.InventoryLevel", b =>
                {
                    b.HasOne("Chlupikometr.Inventory.Entity.Inventory", "Inventory")
                        .WithMany("Levels")
                        .HasForeignKey("InventoryId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_inventory_level_inventory_inventory_id");

                    b.Navigation("Inventory");
                });

            modelBuilder.Entity("Chlupikometr.Ledger.Entity.InventorySnapshot", b =>
                {
                    b.HasOne("Chlupikometr.Inventory.Entity.Inventory", "Inventory")
                        .WithMany()
                        .HasForeignKey("InventoryId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_inventory_snapshots_inventory_inventory_id");

                    b.Navigation("Inventory");
                });

            modelBuilder.Entity("Chlupikometr.Ledger.Entity.Ledger", b =>
                {
                    b.HasOne("Chlupikometr.User.Entity.User", "Child")
                        .WithMany()
                        .HasForeignKey("ChildId")
                        .HasConstraintName("fk_ledger_user_child_id");

                    b.HasOne("Chlupikometr.Family.Entity.Family", "Family")
                        .WithMany()
                        .HasForeignKey("FamilyId")
                        .HasConstraintName("fk_ledger_families_family_id");

                    b.HasOne("Chlupikometr.Ledger.Entity.InventorySnapshot", "InventorySnapshot")
                        .WithMany()
                        .HasForeignKey("InventorySnapshotId")
                        .HasConstraintName("fk_ledger_inventory_snapshots_inventory_snapshot_id");

                    b.HasOne("Chlupikometr.User.Entity.User", "Parent")
                        .WithMany()
                        .HasForeignKey("ParentId")
                        .HasConstraintName("fk_ledger_user_parent_id");

                    b.Navigation("Child");

                    b.Navigation("Family");

                    b.Navigation("InventorySnapshot");

                    b.Navigation("Parent");
                });

            modelBuilder.Entity("Chlupikometr.Family.Entity.Family", b =>
                {
                    b.Navigation("FamilyUsers");
                });

            modelBuilder.Entity("Chlupikometr.Inventory.Entity.Inventory", b =>
                {
                    b.Navigation("Levels");
                });

            modelBuilder.Entity("Chlupikometr.User.Entity.User", b =>
                {
                    b.Navigation("FamilyUser");
                });
#pragma warning restore 612, 618
        }
    }
}
