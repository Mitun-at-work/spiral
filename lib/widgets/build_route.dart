import 'package:flutter/material.dart';
import 'package:sih24/pages/auth/view/auth.dart';
import 'package:sih24/pages/home/view/home.dart';
import 'package:sih24/pages/journal/view/jounal.dart';

Map<String, WidgetBuilder> get appRoutes {
  return {
    "journal": (context) => const JournalScreen(),
    "home": (context) => const HomeScreen(),
    "auth": (context) => const AuthScreen(),
  };
}
