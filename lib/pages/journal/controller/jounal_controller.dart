import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JournalController extends GetxController {
  RxString instrumentType = "BANKNIFTY".obs;
  RxString buyType = "Market Buy Order".obs;
  RxString marketType = "Bullish Market".obs;
  RxString statergy = "LTF OB ENTRY".obs;

  final FocusNode lotSizeField = FocusNode();
  final FocusNode entryPriceTextField = FocusNode();
  final FocusNode exitPriceTextField = FocusNode();
  final FocusNode targetPointsTextField = FocusNode();
  final FocusNode stopPointsTextField = FocusNode();

  @override
  void onInit() async {
    lotSizeField.addListener(() {});
    entryPriceTextField.addListener(() {});
    exitPriceTextField.addListener(() {});
    targetPointsTextField.addListener(() {});
    stopPointsTextField.addListener(() {});
    super.onInit();
  }

  @override
  onClose() {
    lotSizeField.dispose();
    entryPriceTextField.dispose();
    exitPriceTextField.dispose();
    targetPointsTextField.dispose();
    stopPointsTextField.dispose();
    super.onClose();
  }

  void saveJournalEntry() async {}
}
