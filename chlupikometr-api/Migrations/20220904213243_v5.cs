using Chlupikometr.Family.Entity;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace Chlupikometr.Migrations
{
    public partial class v5 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_ledger_chlupik_chlupik_id",
                table: "ledger");

            migrationBuilder.DropForeignKey(
                name: "fk_ledger_user_user_id",
                table: "ledger");

            migrationBuilder.DropTable(
                name: "chlupik");

            migrationBuilder.DropTable(
                name: "file");

            migrationBuilder.DropIndex(
                name: "ix_ledger_chlupik_id",
                table: "ledger");

            migrationBuilder.DropIndex(
                name: "ix_ledger_user_id",
                table: "ledger");

            migrationBuilder.DropColumn(
                name: "chlupik_id",
                table: "ledger");

            migrationBuilder.DropColumn(
                name: "description",
                table: "ledger");

            migrationBuilder.DropColumn(
                name: "title",
                table: "ledger");

            migrationBuilder.DropColumn(
                name: "user_id",
                table: "ledger");

            migrationBuilder.RenameColumn(
                name: "user_note",
                table: "ledger",
                newName: "parent_note");

            migrationBuilder.AlterDatabase()
                .Annotation("Npgsql:Enum:family_user_kind", "parent,child");

            migrationBuilder.AlterColumn<string>(
                name: "email",
                table: "user",
                type: "character varying(255)",
                maxLength: 255,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "character varying(255)",
                oldMaxLength: 255);

            migrationBuilder.AddColumn<int>(
                name: "child_id",
                table: "ledger",
                type: "integer",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "family_id",
                table: "ledger",
                type: "integer",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "inventory_snapshot_id",
                table: "ledger",
                type: "integer",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "parent_id",
                table: "ledger",
                type: "integer",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "is_initial",
                table: "inventory_Level",
                type: "boolean",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<int>(
                name: "family_id",
                table: "inventory",
                type: "integer",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "version",
                table: "inventory",
                type: "integer",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "families",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    name = table.Column<string>(type: "character varying(255)", maxLength: 255, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_families", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "inventory_snapshots",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    version = table.Column<int>(type: "integer", nullable: false),
                    inventory_id = table.Column<int>(type: "integer", nullable: false),
                    title = table.Column<string>(type: "character varying(255)", maxLength: 255, nullable: false),
                    description = table.Column<string>(type: "text", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_inventory_snapshots", x => x.id);
                    table.ForeignKey(
                        name: "fk_inventory_snapshots_inventory_inventory_id",
                        column: x => x.inventory_id,
                        principalTable: "inventory",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "family_user",
                columns: table => new
                {
                    family_id = table.Column<int>(type: "integer", nullable: false),
                    user_id = table.Column<int>(type: "integer", nullable: false),
                    kind = table.Column<FamilyUserKind>(type: "family_user_kind", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_family_user", x => new { x.family_id, x.user_id });
                    table.ForeignKey(
                        name: "fk_family_user_families_family_id",
                        column: x => x.family_id,
                        principalTable: "families",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "fk_family_user_user_user_id",
                        column: x => x.user_id,
                        principalTable: "user",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_ledger_family_id",
                table: "ledger",
                column: "family_id");

            migrationBuilder.CreateIndex(
                name: "ix_ledger_child_id",
                table: "ledger",
                column: "child_id");

            migrationBuilder.CreateIndex(
                name: "ix_ledger_inventory_snapshot_id",
                table: "ledger",
                column: "inventory_snapshot_id");

            migrationBuilder.CreateIndex(
                name: "ix_ledger_parent_id",
                table: "ledger",
                column: "parent_id");

            migrationBuilder.CreateIndex(
                name: "ix_inventory_family_id",
                table: "inventory",
                column: "family_id");

            migrationBuilder.CreateIndex(
                name: "ix_family_user_user_id",
                table: "family_user",
                column: "user_id");

            migrationBuilder.CreateIndex(
                name: "ix_inventory_snapshots_inventory_id",
                table: "inventory_snapshots",
                column: "inventory_id");

            migrationBuilder.AddForeignKey(
                name: "fk_inventory_families_family_id",
                table: "inventory",
                column: "family_id",
                principalTable: "families",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "fk_ledger_families_family_id",
                table: "ledger",
                column: "family_id",
                principalTable: "families",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "fk_ledger_inventory_snapshots_inventory_snapshot_id",
                table: "ledger",
                column: "inventory_snapshot_id",
                principalTable: "inventory_snapshots",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "fk_ledger_user_child_id",
                table: "ledger",
                column: "child_id",
                principalTable: "user",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "fk_ledger_user_parent_id",
                table: "ledger",
                column: "parent_id",
                principalTable: "user",
                principalColumn: "id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_inventory_families_family_id",
                table: "inventory");

            migrationBuilder.DropForeignKey(
                name: "fk_ledger_families_family_id",
                table: "ledger");

            migrationBuilder.DropForeignKey(
                name: "fk_ledger_inventory_snapshots_inventory_snapshot_id",
                table: "ledger");

            migrationBuilder.DropForeignKey(
                name: "fk_ledger_user_child_id",
                table: "ledger");

            migrationBuilder.DropForeignKey(
                name: "fk_ledger_user_parent_id",
                table: "ledger");

            migrationBuilder.DropTable(
                name: "family_user");

            migrationBuilder.DropTable(
                name: "inventory_snapshots");

            migrationBuilder.DropTable(
                name: "families");

            migrationBuilder.DropIndex(
                name: "ix_ledger_family_id",
                table: "ledger");

            migrationBuilder.DropIndex(
                name: "ix_ledger_child_id",
                table: "ledger");

            migrationBuilder.DropIndex(
                name: "ix_ledger_inventory_snapshot_id",
                table: "ledger");

            migrationBuilder.DropIndex(
                name: "ix_ledger_parent_id",
                table: "ledger");

            migrationBuilder.DropIndex(
                name: "ix_inventory_family_id",
                table: "inventory");

            migrationBuilder.DropColumn(
                name: "child_id",
                table: "ledger");

            migrationBuilder.DropColumn(
                name: "family_id",
                table: "ledger");

            migrationBuilder.DropColumn(
                name: "inventory_snapshot_id",
                table: "ledger");

            migrationBuilder.DropColumn(
                name: "parent_id",
                table: "ledger");

            migrationBuilder.DropColumn(
                name: "is_initial",
                table: "inventory_Level");

            migrationBuilder.DropColumn(
                name: "family_id",
                table: "inventory");

            migrationBuilder.DropColumn(
                name: "version",
                table: "inventory");

            migrationBuilder.RenameColumn(
                name: "parent_note",
                table: "ledger",
                newName: "user_note");

            migrationBuilder.AlterDatabase()
                .OldAnnotation("Npgsql:Enum:family_user_kind", "parent,child");

            migrationBuilder.AlterColumn<string>(
                name: "email",
                table: "user",
                type: "character varying(255)",
                maxLength: 255,
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "character varying(255)",
                oldMaxLength: 255,
                oldNullable: true);

            migrationBuilder.AddColumn<int>(
                name: "chlupik_id",
                table: "ledger",
                type: "integer",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "description",
                table: "ledger",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "title",
                table: "ledger",
                type: "character varying(255)",
                maxLength: 255,
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<int>(
                name: "user_id",
                table: "ledger",
                type: "integer",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "file",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    external_id = table.Column<string>(type: "text", nullable: false),
                    url = table.Column<string>(type: "text", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_file", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "chlupik",
                columns: table => new
                {
                    id = table.Column<int>(type: "integer", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                    avatar_id = table.Column<int>(type: "integer", nullable: false),
                    name = table.Column<string>(type: "character varying(255)", maxLength: 255, nullable: false),
                    points = table.Column<int>(type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("pk_chlupik", x => x.id);
                    table.ForeignKey(
                        name: "fk_chlupik_file_avatar_id",
                        column: x => x.avatar_id,
                        principalTable: "file",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "ix_ledger_chlupik_id",
                table: "ledger",
                column: "chlupik_id");

            migrationBuilder.CreateIndex(
                name: "ix_ledger_user_id",
                table: "ledger",
                column: "user_id");

            migrationBuilder.CreateIndex(
                name: "ix_chlupik_avatar_id",
                table: "chlupik",
                column: "avatar_id");

            migrationBuilder.AddForeignKey(
                name: "fk_ledger_chlupik_chlupik_id",
                table: "ledger",
                column: "chlupik_id",
                principalTable: "chlupik",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_ledger_user_user_id",
                table: "ledger",
                column: "user_id",
                principalTable: "user",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
