class TaskModel {
  final String title;
  final String description;
  final bool isCompleted;
  final String id;
  final String createdAt;
  final String updatedAt;

  TaskModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.isCompleted,
    required this.title,
    required this.description,
  });

  factory TaskModel.fromJson(jsonData) {
    return TaskModel(
      title: jsonData['items']['title'],
      description: jsonData['items']['description'],
      isCompleted: jsonData['items']['is_completed'],
      id: jsonData['items']['_id'],
      createdAt: jsonData['items']['created_at'],
      updatedAt: jsonData['items']['updated_at'],
    );
  }
}
