using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Chlupikometr.Migrations
{
    public partial class v14 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_inventory_snapshots_inventory_inventory_id",
                table: "inventory_snapshots");

            migrationBuilder.AlterColumn<int>(
                name: "inventory_id",
                table: "inventory_snapshots",
                type: "integer",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AddForeignKey(
                name: "fk_inventory_snapshots_inventory_inventory_id",
                table: "inventory_snapshots",
                column: "inventory_id",
                principalTable: "inventory",
                principalColumn: "id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_inventory_snapshots_inventory_inventory_id",
                table: "inventory_snapshots");

            migrationBuilder.AlterColumn<int>(
                name: "inventory_id",
                table: "inventory_snapshots",
                type: "integer",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "fk_inventory_snapshots_inventory_inventory_id",
                table: "inventory_snapshots",
                column: "inventory_id",
                principalTable: "inventory",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
