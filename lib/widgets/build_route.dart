import 'package:flutter/material.dart';
import 'package:sih24/pages/auth/view/auth.dart';
import 'package:sih24/pages/home/view/home.dart';
import 'package:sih24/pages/journal/view/jounal.dart';
import 'package:sih24/pages/onboard/view/onboard.dart';
import 'package:sih24/pages/onboard/view/user_details.dart';

Map<String, WidgetBuilder> get appRoutes {
  return {
    "onboard": (context) => const OnboardScreen(),
    "user": (context) => const UserDetailsScreen(),
    "auth": (context) => const AuthScreen(),
    "home": (context) => const HomeScreen(),
    "journal": (context) => const JournalScreen(),
  };
}
