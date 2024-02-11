import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/home/controller/home_controller.dart';

buildAppBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: GetBuilder<HomeController>(
      builder: (controller) {
        return AppBar(
          elevation: 4,
          title: Text(
            "Welcome ${controller.userName.value.capitalizeFirst} !",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: FileImage(
                    File(
                      controller.userProfilePicture.value,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
}
