import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/src/pages/projects_page/controller/project_controller.dart';
import 'package:get_x_practice/src/pages/projects_page/models/project_view_model.dart';

class ProjectListItem extends GetView<ProjectController> {
  const ProjectListItem(
      {super.key, required this.projectModel, required this.projectId});

  final ProjectViewModel projectModel;
  final int projectId;

  @override
  Widget build(BuildContext context) {
    return Obx(() => InkWell(
          onTap: () => controller.changeProjectItemEnable(projectId),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: controller.projectsViewEnable[projectModel.id] == true
                  ? Colors.green
                  : Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      projectModel.title,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(
                      projectModel.id.toString(),
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ));
  }
}
