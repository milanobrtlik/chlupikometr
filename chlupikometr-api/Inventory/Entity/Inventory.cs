using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Chlupikometr.Inventory.Entity;

[Table("inventory")]
public class Inventory
{
    public int Id { get; set; }
    [StringLength(255)] public string Title { get; set; } = default!;
    public string? Description { get; set; }

    public ICollection<InventoryLevel> Levels { get; } = new List<InventoryLevel>();
    
    [GraphQLIgnore]
    public int Version { get; set; }
    
    [GraphQLIgnore]
    public int FamilyId { get; set; }
    [GraphQLIgnore]
    public Family.Entity.Family? Family { get; set; }
    
    public int? IconData { get; set; }
    
    [GraphQLIgnore]
    public int Usage { get; set; }
}
