import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sih24/firebase_options.dart';
import 'package:sih24/pages/home/controller/home_controller.dart';
import 'package:sih24/pages/journal/controller/jounal_controller.dart';
import 'package:sih24/utils/constants.dart';

class DependedncyInjection {
  Future<void> injectDependency() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    final directory = await getApplicationDocumentsDirectory();
    applicationDocumentsDirectory = directory.path;
    //
    Hive.init(directory.path);
    //

    Get.put(HomeController());
    Get.put(JournalController());
  }
}
