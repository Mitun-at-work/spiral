import 'package:flutter/material.dart';
import 'package:sih24/dependencies/dependency_injection.dart';
import 'package:sih24/widgets/build_app.dart';
import 'package:sih24/widgets/build_route.dart';

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
      routes: appRoutes,
      debugShowCheckedModeBanner: false,
      theme: buildApp(),
      initialRoute: "journal",
      // home: const HomeScreen(),
    );
  }
}
