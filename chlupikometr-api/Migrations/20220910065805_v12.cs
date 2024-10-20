using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Chlupikometr.Migrations
{
    public partial class v12 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "description",
                table: "inventory_level",
                type: "text",
                nullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "icon_data",
                table: "inventory",
                type: "integer",
                nullable: true,
                oldClrType: typeof(long),
                oldType: "bigint",
                oldNullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "description",
                table: "inventory_level");

            migrationBuilder.AlterColumn<long>(
                name: "icon_data",
                table: "inventory",
                type: "bigint",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);
        }
    }
}
