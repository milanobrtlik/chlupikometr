using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Chlupikometr.Migrations
{
    public partial class v11 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_family_user_creator_id",
                table: "family");

            migrationBuilder.AlterColumn<int>(
                name: "creator_id",
                table: "family",
                type: "integer",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "fk_family_user_creator_id",
                table: "family",
                column: "creator_id",
                principalTable: "user",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_family_user_creator_id",
                table: "family");

            migrationBuilder.AlterColumn<int>(
                name: "creator_id",
                table: "family",
                type: "integer",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AddForeignKey(
                name: "fk_family_user_creator_id",
                table: "family",
                column: "creator_id",
                principalTable: "user",
                principalColumn: "id");
        }
    }
}
