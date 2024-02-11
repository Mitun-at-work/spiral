import 'package:flutter/material.dart';
import 'package:sih24/pages/auth/view/auth.dart';
import 'package:sih24/pages/detail/view/detail.dart';
import 'package:sih24/pages/home/view/home.dart';
import 'package:sih24/pages/journal/view/jounal.dart';
import 'package:sih24/pages/onboard/view/onboard.dart';
import 'package:sih24/pages/onboard/view/widgets/user_details_name.dart';
import 'package:sih24/pages/onboard/view/widgets/user_image.dart';

Map<String, WidgetBuilder> get appRoutes {
  return {
    "onboard": (context) => const OnboardScreen(),
    "uName": (context) => const UserDetailsName(),
    "uPic": (context) => const UserImageScreen(),
    "auth": (context) => const AuthScreen(),
    "home": (context) => const HomeScreen(),
    "journal": (context) => const JournalScreen(),
    "detail": (context) => const DetailPage(),
  };
}
