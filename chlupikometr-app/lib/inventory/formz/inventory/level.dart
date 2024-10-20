class Level {
  const Level({
    required this.id,
    required this.title,
    required this.description,
    required this.reward,
  });

  final int? id;
  final String title;
  final String? description;
  final int reward;

  Level copyWith({
    int? id,
    String? title,
    String? description,
    int? reward,
  }) {
    return Level(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      reward: reward ?? this.reward,
    );
  }
}
