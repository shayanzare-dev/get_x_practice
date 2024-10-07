import 'package:get/get.dart';

import '../controller/project_controller.dart';

class ProjectsBinding extends Bindings {


  @override
  void dependencies() {
    final String value = Get.parameters['user']!;
    final int? userId = int.tryParse(value);

    Get.lazyPut(() => ProjectController(userId));
  }
}
