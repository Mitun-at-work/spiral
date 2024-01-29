import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/onboard/controller/onboard_controller.dart';

buildOnboardFloat(BuildContext context) {
  return GetBuilder<OnBoardController>(builder: (controller) {
    return controller.pickedImage.value == ""
        ? const SizedBox()
        : FloatingActionButton(
            child: const Icon(Icons.start),
            onPressed: () async {
              await controller.updateUserDetails();
              if (context.mounted) {
                Navigator.pushNamedAndRemoveUntil(
                    context, "home", (route) => false);
              }
            },
          );
  });
}
