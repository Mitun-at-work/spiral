import 'package:sih24/utils/export_headers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependedncyInjection.injectBasics();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: appRoutes,
      debugShowCheckedModeBanner: false,
      theme: buildApp(),
      initialRoute: dependedncyInjection.route,
    );
  }
}
