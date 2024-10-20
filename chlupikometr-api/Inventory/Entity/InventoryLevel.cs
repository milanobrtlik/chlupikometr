using System.ComponentModel.DataAnnotations.Schema;

namespace Chlupikometr.Inventory.Entity;

[Table("inventory_level")]
public class InventoryLevel
{
    public int Id { get; set; }
    [GraphQLIgnore]
    public int InventoryId { get; set; }
    [GraphQLIgnore]
    public Inventory? Inventory { get; set; }

    public string Title { get; set; } = default!;
    public int Reward { get; set; }
    public bool IsInitial { get; set; }
    public string? Description { get; set; }
}
