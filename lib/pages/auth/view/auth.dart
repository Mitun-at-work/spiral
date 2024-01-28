import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/auth/controller/auth_controller.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                GetBuilder<AuthController>(builder: (controller) {
                  return IconButton(
                    autofocus: true,
                    onPressed: () async {
                      if (await controller.authenticateUser()) {
                        if (context.mounted) {
                          Navigator.pushNamedAndRemoveUntil(
                              context, 'home', (route) => false);
                        }
                      }
                    },
                    icon: const Icon(
                      Icons.lock_outline_rounded,
                      size: 50,
                    ),
                  );
                }),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    "Please Authenticate your Identity",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
