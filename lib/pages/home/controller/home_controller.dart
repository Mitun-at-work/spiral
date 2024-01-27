import 'package:get/get.dart';
import 'package:sih24/utils/hive_manager.dart';

Map<String, dynamic> testJournalData = {
  'Order Type': 0,
  'Buy Price': 50,
  'Sell Price': 20,
  "Lot Size": 100,
  "Target Points": 12,
  "Stop Loss Points": 2,
  "Take Profit Points": 12,
  "Market": "Forex",
};

class HomeController extends GetxController {
  final HiveManager hiveManager = HiveManager();
  RxList journalData = [].obs;

  @override
  Future<void> onInit() async {
    await hiveManager.initializeHive();
    var result = await hiveManager.readFromHive('data');
    if (result != null) {
      journalData.value = result;
    }
    super.onInit();
    update();
  }
}
