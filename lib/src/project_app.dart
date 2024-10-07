import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/src/infrastructure/route/route_pages.dart';
import 'package:get_x_practice/src/infrastructure/route/route_path.dart';

class ProjectApp extends StatelessWidget {
  const ProjectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'project management',
      initialRoute: RoutePath.userPage,
      getPages: RoutePages.pages,
    );
  }
}
