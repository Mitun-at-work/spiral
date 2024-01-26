import 'dart:math';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:sih24/utils/constants.dart';

class HiveManager {
  late Box _hiveBox;
  final HiveAesCipher _hiveAesCipher = HiveAesCipher(cipher);

  // Initialize the hive
  Future<void> initializeHive() async {
    try {
      _hiveBox = await Hive.openBox(
        'journal',
        crashRecovery: true,
        path: applicationDocumentsDirectory,
        encryptionCipher: _hiveAesCipher,
      );
      log.printInfo(info: "Hive Initialised");
    } catch (e) {
      log.printError(info: "Hive Not Initialised");
    }
  }

  // Write data to the hive
  Future<void> writeToHive(String key, dynamic value) async {
    try {
      await _hiveBox.put(key, value);
      log.printInfo(info: "Data with key '$key' written to the hive.");
    } catch (e) {
      log.printInfo(info: e.toString());
    }
  }

  // Read data from the hive
  dynamic readFromHive(String key) {
    final value = _hiveBox.get(key);

    try {
      if (value != null) {
        log.printInfo(info: "Successfully retrieved ");
        return value;
      } else {
        log.printInfo(info: "$key not Found");
        return null;
      }
    } catch (e) {
      log.printError(info: e.toString());
    }
  }

  // Delete data from the hive
  Future<void> deleteFromHive(String key) async {
    try {
      if (_hiveBox.containsKey(key)) {
        await _hiveBox.delete(key);
        log.printInfo(info: "Data with key '$key' deleted from the hive.");
      } else {
        log.printInfo(
            info:
                "No data found for key '$key' in the hive. Unable to delete.");
      }
    } catch (e) {
      log.printInfo(info: e.toString());
    }
  }

  Future<void> closeHive() async {
    await _hiveBox.close();
  }

  Future<void> transactionHive(List<Map<String, dynamic>> data) async {
    await _hiveBox.put('journal', data);
  }
}


// await collection.transaction(
//     () async {
//       await catsBox.put('fluffy', {'name': 'Fluffy', 'age': 4});
//       await catsBox.put('loki', {'name': 'Loki', 'age': 2});
//       // ...
//     },
//     boxNames: ['cats'], // By default all boxes become blocked.
//     readOnly: false,