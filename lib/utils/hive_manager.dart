import 'dart:developer';
import 'package:hive/hive.dart';

class HiveManager {
  bool isExistingUser = false;
  final Map<String, Box> _hiveBoxes = {};

  Future<void> initializeHive(String boxName) async {
    if (!_hiveBoxes.keys.contains(boxName)) {
      await Hive.openBox(boxName);
      _hiveBoxes[boxName] = await Hive.openBox(boxName);
    }
    log("Initialised Hive Box");
  }

  Future<void> verifyUser() async {
    if (_hiveBoxes.containsKey('userDetails')) {
      final data = readFromHive('userDetails', 'userProfile');
      if (data != null) {
        isExistingUser = true;
      }
    }
  }

  bool checkHiveBox(String boxName) {
    if (_hiveBoxes.keys.contains(boxName)) {
      return true;
    }
    return false;
  }

  // Write data to the specified box
  Future<void> writeToHive(String boxName, String key, Map value) async {
    final box = _hiveBoxes[boxName];
    if (box != null) {
      await box.put(key, value);
      log("Data with key '$key' written to the '$boxName' box.");
    } else {
      log("Box '$boxName' not found.");
    }
  }

  // Read data from the specified box
  dynamic readFromHive(String boxName, String key) {
    final box = _hiveBoxes[boxName];
    if (box != null) {
      final value = box.get(key);
      if (value != null) {
        return value;
      } else {
        log("No data found for key '$key' in the '$boxName' box.");
        return null;
      }
    } else {
      log("Box '$boxName' not found.");
      return null;
    }
  }

  // Close the hive boxes when done
  Future<void> closeHive() async {
    for (var box in _hiveBoxes.values) {
      await box.close();
    }
  }
}
