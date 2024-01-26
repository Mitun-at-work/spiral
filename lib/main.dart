import 'package:flutter/material.dart';
import 'package:sih24/dependencies/dependency_injection.dart';
import 'package:sih24/pages/home/view/home.dart';
import 'package:sih24/pages/journal/view/jounal.dart';
import 'package:sih24/widgets/build_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependedncyInjection().injectDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "jounal": (context) => const JournalScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: buildApp(),
      home: const HomeScreen(),
    );
  }
}
