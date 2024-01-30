import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sih24/firebase_options.dart';
import 'package:sih24/pages/auth/controller/auth_controller.dart';
import 'package:sih24/pages/home/controller/home_controller.dart';
import 'package:sih24/pages/journal/controller/jounal_controller.dart';
import 'package:sih24/pages/onboard/controller/onboard_controller.dart';
import 'package:sih24/utils/constants.dart';

class DependedncyInjection {
  String route = "onboard";

  Future<void> injectBasics() async {
    Get.put(OnBoardController());
    final directory = await getApplicationDocumentsDirectory();
    applicationDocumentsDirectory = directory.path;
    Hive.init(directory.path);
    await hiveManager.initializeHive("userDetails");
    await hiveManager.verifyUser();
    if (hiveManager.isExistingUser) {
      Get.put(AuthController());
      route = "auth";
    } else {
      Get.put(OnBoardController());
    }
  }

  // Advanced Dependencies
  Future<void> injectAdvanced() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    Get.put(HomeController());
    Get.put(JournalController());
  }
}
