import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/src/pages/projects_page/controller/project_controller.dart';
import 'package:get_x_practice/src/pages/projects_page/view/widgets/project_list_item.dart';

class ProjectView extends GetView<ProjectController> {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${controller.userViewModelId}'),
      ),
      body: SafeArea(child: _body()),
    );
  }

  Widget _body() => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: controller.projectViewModels.length,
                  itemBuilder: (context, index) => ProjectListItem(
                      projectModel: controller.projectViewModels[index],
                      projectId: controller.projectViewModels[index].id)),
            )
          ],
        ),
      );
}
