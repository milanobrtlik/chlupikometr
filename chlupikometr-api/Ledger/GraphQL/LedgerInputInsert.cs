namespace Chlupikometr.Ledger.GraphQL;

public record LedgerInsertInput(
    int InventoryId,
    List<ChildReward> ChildRewards,
    Optional<string?> UserNote
);

public record ChildReward(
    int ChildId,
    int Reward);
