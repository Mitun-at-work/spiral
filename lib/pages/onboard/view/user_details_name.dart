import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/onboard/controller/onboard_controller.dart';

class UserDetailsName extends StatelessWidget {
  const UserDetailsName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: GetBuilder<OnBoardController>(builder: (controller) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.asset("assets/images/trend.png")),
                  const SizedBox(height: 10),
                  const Text(
                    "Spiral (Journal)",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "To get started, kindly enter a username that resonates with you and reflects your trading identity",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextField(
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        autofocus: true,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          hintText: "Enter User Name",
                        ),
                        onSubmitted: (value) {
                          controller.userName = value;
                          Navigator.pushNamed(context, "uPic");
                        }),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

// GestureDetector(
//                     onTap: () => controller.updateProfilePicture(),
//                     child: Container(
//                       height: 180,
//                       decoration: BoxDecoration(
//                         color: Colors.grey.withOpacity(.4),
//                         shape: BoxShape.circle,
//                         image: controller.pickedImage.value == ""
//                             ? null
//                             : DecorationImage(
//                                 fit: BoxFit.cover,
//                                 image: FileImage(
//                                   File(
//                                     controller.pickedImage.value,
//                                   ),
//                                 ),
//                               ),
//                       ),
//                     ),
//                   ),
