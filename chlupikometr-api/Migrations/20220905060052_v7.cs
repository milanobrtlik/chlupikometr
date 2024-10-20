using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Chlupikometr.Migrations
{
    public partial class v7 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterDatabase()
                .Annotation("Npgsql:Enum:family_user_kind", "parent,baby_sitter,child")
                .OldAnnotation("Npgsql:Enum:family_user_kind", "parent,child");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterDatabase()
                .Annotation("Npgsql:Enum:family_user_kind", "parent,child")
                .OldAnnotation("Npgsql:Enum:family_user_kind", "parent,baby_sitter,child");
        }
    }
}
