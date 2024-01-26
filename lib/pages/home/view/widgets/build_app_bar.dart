import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 4,
    title: const Text(
      "Trading Journal",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Positioned(
              right: 2,
              bottom: 18,
              child: CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 5,
              ),
            ),
            Icon(
              Icons.local_fire_department_sharp,
              size: 30,
            ),
          ],
        ),
      )
    ],
  );
}
