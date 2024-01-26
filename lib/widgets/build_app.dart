import 'package:flutter/material.dart';

ThemeData buildApp() {
  return ThemeData(
    inputDecorationTheme: const InputDecorationTheme(
      counterStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      border: OutlineInputBorder(),
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
      ),
      hintStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: Colors.black,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        shape: CircleBorder(), elevation: 0),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    fontFamily: 'Poppins',
    dividerColor: Colors.transparent,
    listTileTheme: const ListTileThemeData(
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 10,
      ),
      subtitleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      leadingAndTrailingTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    dialogTheme: DialogTheme(
      surfaceTintColor: Colors.white,
      shape: Border.all(color: Colors.transparent),
    ),
  );
}
