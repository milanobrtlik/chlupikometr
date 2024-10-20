using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Chlupikometr.Family.Entity;

namespace Chlupikometr.User.Entity;

[Table("user")]
public class User
{
    public int Id { get; set; }
    [StringLength(255)]
    
    [GraphQLIgnore]
    public string? Email { get; set; }

    [StringLength(255)] public string Name { get; set; } = default!;

    public string? PictureUrl { get; set; }

    [GraphQLIgnore]
    public ICollection<FamilyUser> FamilyUser { get; set; } = default!;
}
