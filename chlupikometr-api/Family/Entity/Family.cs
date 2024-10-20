using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Chlupikometr.Family.Entity;

[Table("family")]
public class Family
{
    public int Id { get; set; }
    [StringLength(255)] public string Name { get; set; } = default!;

    [GraphQLIgnore] public ICollection<FamilyUser> FamilyUsers { get; set; } = default!;
}
