using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Chlupikometr.Migrations
{
    public partial class v15 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "usage",
                table: "inventory",
                type: "integer",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "usage",
                table: "inventory");
        }
    }
}
