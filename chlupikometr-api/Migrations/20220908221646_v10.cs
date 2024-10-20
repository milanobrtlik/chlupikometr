using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Chlupikometr.Migrations
{
    public partial class v10 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_family_user_family_family_id",
                table: "family_user");

            migrationBuilder.DropForeignKey(
                name: "fk_family_user_user_user_id",
                table: "family_user");

            migrationBuilder.DropPrimaryKey(
                name: "pk_family_user",
                table: "family_user");

            migrationBuilder.RenameTable(
                name: "family_user",
                newName: "family_users");

            migrationBuilder.RenameIndex(
                name: "ix_family_user_user_id",
                table: "family_users",
                newName: "ix_family_users_user_id");

            migrationBuilder.AlterColumn<long>(
                name: "icon_data",
                table: "inventory",
                type: "bigint",
                nullable: true,
                oldClrType: typeof(long),
                oldType: "bigint");

            migrationBuilder.AddColumn<int>(
                name: "creator_id",
                table: "family",
                type: "integer",
                nullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "pk_family_users",
                table: "family_users",
                columns: new[] { "family_id", "user_id" });

            migrationBuilder.CreateIndex(
                name: "ix_family_creator_id",
                table: "family",
                column: "creator_id");

            migrationBuilder.AddForeignKey(
                name: "fk_family_user_creator_id",
                table: "family",
                column: "creator_id",
                principalTable: "user",
                principalColumn: "id");

            migrationBuilder.AddForeignKey(
                name: "fk_family_users_family_family_id",
                table: "family_users",
                column: "family_id",
                principalTable: "family",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_family_users_user_user_id",
                table: "family_users",
                column: "user_id",
                principalTable: "user",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "fk_family_user_creator_id",
                table: "family");

            migrationBuilder.DropForeignKey(
                name: "fk_family_users_family_family_id",
                table: "family_users");

            migrationBuilder.DropForeignKey(
                name: "fk_family_users_user_user_id",
                table: "family_users");

            migrationBuilder.DropIndex(
                name: "ix_family_creator_id",
                table: "family");

            migrationBuilder.DropPrimaryKey(
                name: "pk_family_users",
                table: "family_users");

            migrationBuilder.DropColumn(
                name: "creator_id",
                table: "family");

            migrationBuilder.RenameTable(
                name: "family_users",
                newName: "family_user");

            migrationBuilder.RenameIndex(
                name: "ix_family_users_user_id",
                table: "family_user",
                newName: "ix_family_user_user_id");

            migrationBuilder.AlterColumn<long>(
                name: "icon_data",
                table: "inventory",
                type: "bigint",
                nullable: false,
                defaultValue: 0L,
                oldClrType: typeof(long),
                oldType: "bigint",
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "pk_family_user",
                table: "family_user",
                columns: new[] { "family_id", "user_id" });

            migrationBuilder.AddForeignKey(
                name: "fk_family_user_family_family_id",
                table: "family_user",
                column: "family_id",
                principalTable: "family",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "fk_family_user_user_user_id",
                table: "family_user",
                column: "user_id",
                principalTable: "user",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
