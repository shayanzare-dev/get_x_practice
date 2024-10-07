import 'package:get_x_practice/src/pages/projects_page/models/project_view_model.dart';
import 'package:get_x_practice/src/pages/user_page/models/user_view_model.dart';

class DataBase {
  static List<UserViewModel> userModels = [
    UserViewModel(id: 1, title: 'shayan'),
    UserViewModel(id: 2, title: 'arman'),
    UserViewModel(id: 3, title: 'hesam'),
    UserViewModel(id: 4, title: 'hamed'),
    UserViewModel(id: 5, title: 'hamed'),
    UserViewModel(id: 6, title: 'hamed'),
  ];

  static List<ProjectViewModel> projectsViewModel = [
    ProjectViewModel(id: 1, title: 'facebook', userIds: []),
    ProjectViewModel(id: 2, title: 'instagram', userIds: []),
    ProjectViewModel(id: 3, title: 'telegram', userIds: []),
  ];
}
