import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/onboard/controller/onboard_controller.dart';
import 'package:sih24/pages/onboard/view/widgets/build_onboard_float.dart';

class UserImageScreen extends StatelessWidget {
  const UserImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildOnboardFloat(context),
      body: SafeArea(
        child: GetBuilder<OnBoardController>(
          builder: (controller) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: () => controller.updateProfilePicture(),
                        child: Container(
                          height: 190,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: controller.pickedImage.value == ""
                                    ? const AssetImage(
                                            "assets/images/profile.png")
                                        as ImageProvider
                                    : FileImage(
                                        File(
                                          controller.pickedImage.value,
                                        ),
                                      )),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        "Spiral Picture",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "To further enhance your personalized experience with Spiral, we encourage you to select a user image that resonates with your trading persona. This image will not only add a touch of individuality to your profile but will also make navigating the application a more visually engaging and enjoyable experience.",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
