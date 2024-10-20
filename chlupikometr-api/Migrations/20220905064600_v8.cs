using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Chlupikometr.Migrations
{
    public partial class v8 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(
                "UPDATE pg_enum SET enumlabel = 'babysitter' WHERE enumlabel = 'baby_sitter' AND enumtypid = (SELECT OID FROM pg_type WHERE typname = 'family_user_kind')"
                );
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterDatabase()
                .Annotation("Npgsql:Enum:family_user_kind", "parent,baby_sitter,child")
                .OldAnnotation("Npgsql:Enum:family_user_kind", "parent,babysitter,child");
        }
    }
}
