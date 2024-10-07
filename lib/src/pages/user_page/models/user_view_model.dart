class UserViewModel {
  final String title;
  final String description;
  final int id;

  const UserViewModel({
    required this.id,
    required this.title,
    this.description = 'description',
  }) : assert(id > 0, 'id smaller than 0');
}
