using System.ComponentModel.DataAnnotations;

namespace Chlupikometr.Ledger.Entity;

public class InventorySnapshot
{
    public int Id { get; set; }
    public int Version { get; set; }
    [GraphQLIgnore]
    public int? InventoryId { get; set; }
    public Inventory.Entity.Inventory? Inventory { get; set; }
    [StringLength(255)] public string Title { get; set; } = default!;
    public string? Description { get; set; }
}
