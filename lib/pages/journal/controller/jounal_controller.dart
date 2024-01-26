import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JournalController extends GetxController {
  RxString instrumentType = "BANKNIFTY".obs;
  RxString buyType = "Market Buy Order".obs;
  RxString marketType = "Bullish Market".obs;
  RxString statergy = "LTF OB ENTRY".obs;

  final FocusNode orderTypeDropDown = FocusNode();
  final FocusNode instrumentChoiceDropDown = FocusNode();

  final FocusNode entryPriceTextField = FocusNode();
  final FocusNode exitPriceTextField = FocusNode();
  final FocusNode targetPointsTextField = FocusNode();
  final FocusNode stopPointsTextField = FocusNode();

  @override
  void onInit() async {
    orderTypeDropDown.addListener(() {});
    instrumentChoiceDropDown.addListener(() {});
    entryPriceTextField.addListener(() {});
    exitPriceTextField.addListener(() {});
    targetPointsTextField.addListener(() {});
    stopPointsTextField.addListener(() {});
    super.onInit();
  }

  @override
  onClose() {
    entryPriceTextField.dispose();
    exitPriceTextField.dispose();
    targetPointsTextField.dispose();
    stopPointsTextField.dispose();
    super.onClose();
  }
}
