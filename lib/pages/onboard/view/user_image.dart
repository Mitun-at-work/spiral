import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/onboard/controller/onboard_controller.dart';

class UserImageScreen extends StatelessWidget {
  const UserImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<OnBoardController>(
          builder: (controller) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: () => controller.updateProfilePicture(),
                        child: Container(
                          height: 190,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.1),
                            shape: BoxShape.circle,
                            image: controller.pickedImage.value != ""
                                ? DecorationImage(
                                    fit: BoxFit.cover,
                                    image: FileImage(
                                      File(
                                        controller.pickedImage.value,
                                      ),
                                    ),
                                  )
                                : null,
                          ),
                          child: controller.pickedImage.value == ""
                              ? const Icon(
                                  Icons.person_outline,
                                  size: 60,
                                )
                              : null,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "Designed with the needs of traders in mind, Spiral seamlessly integrates into your daily routine, empowering you to take control of your financial journey.",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text(
                      "Designed with the needs of traders in mind, Spiral seamlessly integrates into your daily routine, empowering you to take control of your financial journey.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 50),
                    GestureDetector(
                      onTap: () async {
                        await controller.updateUserDetails();
                        if (context.mounted) {
                          Navigator.pushNamedAndRemoveUntil(
                              context, "home", (route) => false);
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.start,
                          color: Colors.white,
                        ),
                      ),
                    )
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
