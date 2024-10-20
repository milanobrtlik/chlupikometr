using System.ComponentModel.DataAnnotations.Schema;

namespace Chlupikometr.Ledger.Entity;

[Table("ledger")]
public class Ledger
{
    public int Id { get; set; }
    public DateTime EnteredAt { get; set; }
    [GraphQLIgnore]
    public int ParentId { get; set; }
    public User.Entity.User? Parent { get; set; }
    public int Reward { get; set; }
    [GraphQLIgnore]
    public int ChildId { get; set; }
    public User.Entity.User? Child { get; set; }
    
    [GraphQLIgnore]
    public int FamilyId { get; set; }
    [GraphQLIgnore]
    public Family.Entity.Family? Family { get; set; }
    
    [GraphQLIgnore]
    public int InventorySnapshotId { get; set; }
    [GraphQLIgnore]
    public InventorySnapshot? InventorySnapshot { get; set; }
    public string? ParentNote { get; set; }
}
