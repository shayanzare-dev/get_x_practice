

class ProjectViewModel {
  final int id;
  final String title;
  final List<int> userIds;

  ProjectViewModel({
    required this.id,
    required this.title,
    required this.userIds,
  });

  ProjectViewModel copyWith({int? id, String? title, List<int>? userIds}) {
    return ProjectViewModel(
      id: id ?? this.id,
      title: title ?? this.title,
      userIds: userIds ?? this.userIds,
    );
  }

  @override
  String toString() {
    return '$title - $userIds';
  }
}
