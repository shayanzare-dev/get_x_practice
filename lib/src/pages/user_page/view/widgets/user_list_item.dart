import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/src/pages/user_page/controller/user_controller.dart';
import 'package:get_x_practice/src/pages/user_page/models/user_view_model.dart';

class UserListItem extends GetView<UserController> {
  const UserListItem({super.key, required this.userModel});

  final UserViewModel userModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.goToProjectPage(userModel.id),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userModel.title,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  userModel.description,
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
