using Chlupikometr.System.GraphQL;

namespace Chlupikometr.Inventory.GraphQL;

public class InventoryPayload : Payload
{
    public InventoryPayload(Entity.Inventory inventory) : base(new List<UserError>())
    {
        Inventory = inventory;
    }

    public InventoryPayload(IReadOnlyList<UserError> errors) : base(errors)
    {
    }

    public Entity.Inventory? Inventory { get; }
}
