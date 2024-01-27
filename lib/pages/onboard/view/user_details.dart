import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sih24/pages/onboard/controller/onboard_controller.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: GetBuilder<OnBoardController>(builder: (controller) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: GestureDetector(
                    onTap: () async {
                      final ImagePicker picker = ImagePicker();
                      final XFile? image =
                          await picker.pickImage(source: ImageSource.gallery);
                      if (image != null) {
                        controller.pickedImage.value = image.path;
                        controller.update();
                      }
                    },
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        image: controller.pickedImage.value == ""
                            ? null
                            : DecorationImage(
                                fit: BoxFit.fill,
                                image: FileImage(
                                  File(
                                    controller.pickedImage.value,
                                  ),
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(hintText: "Enter your name"),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}




//  CircleAvatar(
//                       radius: 120,
//                       child: controller.pickedImage.value == ""
//                           ? const Icon(
//                               Icons.person_outline_rounded,
//                               size: 90,
//                             )
//                           : Image.file(
//                               File(controller.pickedImage.value),
//                             ),
//                     ),