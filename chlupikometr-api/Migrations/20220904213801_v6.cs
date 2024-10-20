using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Chlupikometr.Migrations
{
    public partial class v6 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_family_user_families_family_id",
                table: "family_user");

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

            migrationBuilder.DropPrimaryKey(
                name: "pk_families",
                table: "families");

            migrationBuilder.RenameTable(
                name: "inventory_Level",
                newName: "inventory_level");

            migrationBuilder.RenameTable(
                name: "families",
                newName: "family");

            migrationBuilder.AlterColumn<int>(
                name: "parent_id",
                table: "ledger",
                type: "integer",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "inventory_snapshot_id",
                table: "ledger",
                type: "integer",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "family_id",
                table: "ledger",
                type: "integer",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "child_id",
                table: "ledger",
                type: "integer",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "family_id",
                table: "inventory",
                type: "integer",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "pk_family",
                table: "family",
                column: "id");

            migrationBuilder.AddForeignKey(
                name: "fk_family_user_family_family_id",
                table: "family_user",
                column: "family_id",
                principalTable: "family",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_inventory_family_family_id",
                table: "inventory",
                column: "family_id",
                principalTable: "family",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_ledger_family_family_id",
                table: "ledger",
                column: "family_id",
                principalTable: "family",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_ledger_inventory_snapshots_inventory_snapshot_id",
                table: "ledger",
                column: "inventory_snapshot_id",
                principalTable: "inventory_snapshots",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_ledger_user_child_id",
                table: "ledger",
                column: "child_id",
                principalTable: "user",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_ledger_user_parent_id",
                table: "ledger",
                column: "parent_id",
                principalTable: "user",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_family_user_family_family_id",
                table: "family_user");

            migrationBuilder.DropForeignKey(
                name: "fk_inventory_family_family_id",
                table: "inventory");

            migrationBuilder.DropForeignKey(
                name: "fk_ledger_family_family_id",
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

            migrationBuilder.DropPrimaryKey(
                name: "pk_family",
                table: "family");

            migrationBuilder.RenameTable(
                name: "inventory_level",
                newName: "inventory_Level");

            migrationBuilder.RenameTable(
                name: "family",
                newName: "families");

            migrationBuilder.AlterColumn<int>(
                name: "parent_id",
                table: "ledger",
                type: "integer",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AlterColumn<int>(
                name: "inventory_snapshot_id",
                table: "ledger",
                type: "integer",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AlterColumn<int>(
                name: "family_id",
                table: "ledger",
                type: "integer",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AlterColumn<int>(
                name: "child_id",
                table: "ledger",
                type: "integer",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AlterColumn<int>(
                name: "family_id",
                table: "inventory",
                type: "integer",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AddPrimaryKey(
                name: "pk_families",
                table: "families",
                column: "id");

            migrationBuilder.AddForeignKey(
                name: "fk_family_user_families_family_id",
                table: "family_user",
                column: "family_id",
                principalTable: "families",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

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
    }
}
