import 'package:flutter/material.dart';
import 'package:sih24/utils/constants.dart';
import 'package:sih24/widgets/build_app.dart';
import 'package:sih24/widgets/build_route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependedncyInjection.injectBasics();
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
      initialRoute: "auth",
    );
  }
}
