import 'package:get/get.dart';
import 'package:get_x_practice/src/infrastructure/data_base/data_base.dart';
import 'package:get_x_practice/src/pages/projects_page/models/project_view_model.dart';

class ProjectController extends GetxController {
  int? userViewModelId;

  ProjectController(this.userViewModelId);

  RxList<ProjectViewModel> projectViewModels = DataBase.projectsViewModel.obs;

  RxMap<int, bool> projectsViewEnable = <int, bool>{}.obs;

  @override
  void onInit() {
    super.onInit();
    for (ProjectViewModel projectViewModel in projectViewModels) {
      if (projectViewModel.userIds.contains(userViewModelId)) {
        projectsViewEnable[projectViewModel.id] = true;
      }
    }
  }

  void activeProjectItem(int projectId) {
    projectsViewEnable[projectId] = true;
  }

  void changeProjectItemEnable(int projectId) {
    bool? value = projectsViewEnable[projectId];

    if (value ?? false) {
      projectsViewEnable[projectId] = false;
    } else {
      projectsViewEnable[projectId] = true;
    }
  }
}
