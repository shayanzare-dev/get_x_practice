import 'package:get/get.dart';
import 'package:get_x_practice/src/pages/projects_page/commons/project_binding.dart';
import 'package:get_x_practice/src/pages/projects_page/view/project_view.dart';
import 'package:get_x_practice/src/pages/user_page/commons/user_bindings.dart';
import 'package:get_x_practice/src/pages/user_page/view/user_view.dart';

import 'route_path.dart';

class RoutePages {
  static List<GetPage> pages = [
    GetPage(
        name: RoutePath.userPage,
        page: () => const UserView(),
        binding: UserBinding(),
        children: [
          GetPage(
              name: RoutePath.projectsPage,
              page: () => const ProjectView(),
              binding: ProjectsBinding())
        ]),
  ];
}
