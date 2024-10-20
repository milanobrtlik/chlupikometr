namespace Chlupikometr.Inventory.GraphQL;

public record InventoryCreateInput(
    string Title,
    Optional<string?> Description,
    List<InventoryLevelCreateInput> Levels);

public record InventoryLevelCreateInput(
    string Title,
    Optional<string?> Description,
    int Reward);

public record InventoryUpdateInput(
    Optional<string?> Title,
    Optional<string?> Description,
    Optional<List<InventoryLevelUpdateInput>?> Levels);

public record InventoryLevelUpdateInput(
    int? LevelId,
    Optional<string?> Title,
    Optional<int?> Reward,
    Optional<string?> Description);
