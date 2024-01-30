import 'dart:developer';

import 'package:get/get.dart';
import 'package:sih24/utils/constants.dart';

class HomeController extends GetxController {
  RxString userName = "".obs;
  Rx userProfilePicture = "".obs;
  RxList journalData = [].obs;

  Future<void> loadUserDetails() async {
    final userDeatils =
        await hiveManager.readFromHive("userDetails", 'userProfile');
    userName.value = userDeatils['name']!;
    userProfilePicture.value = userDeatils['profilePic'];
  }

  Future<void> loadJournalData() async {
    await hiveManager.initializeHive('journal');
    var result = await hiveManager.readFromHive('journal', 'data');
    if (result != null) {
      journalData.value = result;
    }
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    await loadUserDetails();
    await loadJournalData();
    update();
  }

  Future<void> updateHive() async {
    await hiveManager.writeToHive('journal', 'data', journalData);
    log("Sucessfully Written");
  }
}
