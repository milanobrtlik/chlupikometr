using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Chlupikometr.Migrations
{
    public partial class v4 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_user_file_avatar_id",
                table: "user");

            migrationBuilder.DropIndex(
                name: "ix_user_avatar_id",
                table: "user");

            migrationBuilder.DropColumn(
                name: "avatar_id",
                table: "user");

            migrationBuilder.DropColumn(
                name: "google_id",
                table: "user");

            migrationBuilder.AddColumn<string>(
                name: "picture_url",
                table: "user",
                type: "text",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "picture_url",
                table: "user");

            migrationBuilder.AddColumn<int>(
                name: "avatar_id",
                table: "user",
                type: "integer",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "google_id",
                table: "user",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.CreateIndex(
                name: "ix_user_avatar_id",
                table: "user",
                column: "avatar_id");

            migrationBuilder.AddForeignKey(
                name: "fk_user_file_avatar_id",
                table: "user",
                column: "avatar_id",
                principalTable: "file",
                principalColumn: "id");
        }
    }
}
