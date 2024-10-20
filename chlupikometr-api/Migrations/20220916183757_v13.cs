using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Chlupikometr.Migrations
{
    public partial class v13 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_family_user_creator_id",
                table: "family");

            migrationBuilder.DropIndex(
                name: "ix_family_creator_id",
                table: "family");

            migrationBuilder.DropColumn(
                name: "creator_id",
                table: "family");

            migrationBuilder.AlterDatabase()
                .Annotation("Npgsql:Enum:family_user_kind", "founder,parent,babysitter,child")
                .OldAnnotation("Npgsql:Enum:family_user_kind", "parent,babysitter,child");

            migrationBuilder.AlterColumn<string>(
                name: "description",
                table: "inventory_snapshots",
                type: "text",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "text");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterDatabase()
                .Annotation("Npgsql:Enum:family_user_kind", "parent,babysitter,child")
                .OldAnnotation("Npgsql:Enum:family_user_kind", "founder,parent,babysitter,child");

            migrationBuilder.AlterColumn<string>(
                name: "description",
                table: "inventory_snapshots",
                type: "text",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "text",
                oldNullable: true);

            migrationBuilder.AddColumn<int>(
                name: "creator_id",
                table: "family",
                type: "integer",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "ix_family_creator_id",
                table: "family",
                column: "creator_id");

            migrationBuilder.AddForeignKey(
                name: "fk_family_user_creator_id",
                table: "family",
                column: "creator_id",
                principalTable: "user",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
