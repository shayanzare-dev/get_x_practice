import 'package:get/get.dart';
import 'package:get_x_practice/src/infrastructure/data_base/data_base.dart';
import 'package:get_x_practice/src/infrastructure/route/route_names.dart';
import 'package:get_x_practice/src/pages/user_page/models/user_view_model.dart';

class UserController extends GetxController {
  RxList<UserViewModel> userViewModels = DataBase.userModels.obs;

  // RxList<UserViewModel> userViewModels = RxList();

  void goToProjectPage(int userId) {
    Get.toNamed(RouteNames.projectsPage, parameters: {'user': '$userId'});
  }
}
