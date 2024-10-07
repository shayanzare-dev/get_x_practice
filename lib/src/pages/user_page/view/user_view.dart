import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/src/pages/user_page/controller/user_controller.dart';

import 'widgets/user_list_item.dart';

class UserView extends GetView<UserController> {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _body()),
    );
  }

  Widget _body() => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.userViewModels.length,
                itemBuilder: (context, index) =>
                    UserListItem(userModel: controller.userViewModels[index]),
              ),
            )
          ],
        ),
      );
}
