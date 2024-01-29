import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/home/controller/home_controller.dart';
import 'package:sih24/pages/home/model/journal_model.dart';
import 'package:sih24/pages/journal/model/journal_entry_model.dart';

Map<String, int> instrumentMap = {
  'NIFTY50': 0,
  'BANKNIFTY': 0,
  'ETHUSDT': 1,
  'BTCUSDT': 1,
  'EURUSD': 2,
  'GBPUSD': 2,
  'GBPEUR': 2,
  'USDJPY': 2,
  'USDCAD': 2,
  'XAUUSD': 3,
  'CRUDEOIL': 3,
  'NATGAS': 3,
  'OTHERS': 4,
};

class JournalController extends GetxController {
  final homeController = Get.find<HomeController>();

  RxString instrumentType = "BANKNIFTY".obs;
  RxString buyType = "Market Buy Order".obs;
  RxString marketType = "Bullish Market".obs;
  RxString statergy = "LTF OB ENTRY".obs;

  final FocusNode lotSizeField = FocusNode();
  final FocusNode entryPriceTextField = FocusNode();
  final FocusNode exitPriceTextField = FocusNode();
  final FocusNode targetPointsTextField = FocusNode();
  final FocusNode stopPointsTextField = FocusNode();
  final FocusNode tradeMessageTextField = FocusNode();

  @override
  void onInit() async {
    lotSizeField.addListener(() {});
    entryPriceTextField.addListener(() {});
    exitPriceTextField.addListener(() {});
    targetPointsTextField.addListener(() {});
    stopPointsTextField.addListener(() {});
    tradeMessageTextField.addListener(() {});
    super.onInit();
  }

  @override
  onClose() {
    lotSizeField.dispose();
    entryPriceTextField.dispose();
    exitPriceTextField.dispose();
    targetPointsTextField.dispose();
    stopPointsTextField.dispose();
    tradeMessageTextField.dispose();
    super.onClose();
  }

  Future<void> saveJournalEntry() async {
    log("Initialised");
    final JournalModel journalModel = JournalModel(
      journalOrderType: buyType.value,
      journalInstrument: instrumentType.value,
      jounralMarketTrend: marketType.value,
      jounralEntryStatergy: statergy.value,
      jounalEntryPrice: journalEntryModel.entryPrice,
      journalSellPrice: journalEntryModel.exitPrice,
      journalStopPrice: journalEntryModel.stopLossPoints,
      journalTargetPrice: journalEntryModel.targetPoints,
      journalTakeProfitPrice: journalEntryModel.exitPrice,
      jounalLotSize: journalEntryModel.lotSize,
      journalMarketTag: instrumentMap[instrumentType.value] ?? 4,
      journalMessage: journalEntryModel.tradeDescription,
    );
    homeController.journalData.add(journalModel.toMap());
    await homeController.updateHive();
    homeController.update();
    log("Succesfull");
  }
}
