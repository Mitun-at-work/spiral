import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sih24/pages/journal/controller/jounal_controller.dart';
import 'package:sih24/pages/journal/model/journal_entry_model.dart';

class EntryDetails extends StatelessWidget {
  const EntryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JournalController>(builder: (controller) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              focusNode: controller.entryPriceTextField,
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.event_seat_outlined),
                label: Text("Entry Price"),
                hintText: "Enter your entry price",
              ),
              onFieldSubmitted: (value) {
                journalEntryModel.entryPrice = double.parse(value);
                controller.lotSizeField.requestFocus();
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              focusNode: controller.lotSizeField,
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.monetization_on_outlined),
                label: Text("Lot Size"),
                hintText: "Enter your Lot Size",
              ),
              onFieldSubmitted: (value) {
                journalEntryModel.lotSize = double.parse(value);
                controller.exitPriceTextField.requestFocus();
              },
            ),
          ),

          //
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              focusNode: controller.exitPriceTextField,
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.run_circle_outlined),
                label: Text("Exit Price"),
                hintText: "Enter your exit price",
              ),
              onFieldSubmitted: (value) {
                journalEntryModel.exitPrice = double.parse(value);
                controller.targetPointsTextField.requestFocus();
              },
            ),
          ),

          //
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              focusNode: controller.targetPointsTextField,
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.favorite_outline),
                label: Text("Target Points"),
                hintText: "Enter your target points",
              ),
              onFieldSubmitted: (value) {
                journalEntryModel.targetPoints = double.parse(value);
                controller.stopPointsTextField.requestFocus();
              },
            ),
          ),

          //
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              focusNode: controller.stopPointsTextField,
              onFieldSubmitted: (value) {
                journalEntryModel.stopLossPoints = double.parse(value);
                controller.tradeMessageTextField.requestFocus();
              },
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.shield_outlined),
                label: Text("Stop Loss Points"),
                hintText: "Enter your SL points",
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              onFieldSubmitted: (newValue) {
                print("New Value is $newValue");
                journalEntryModel.tradeDescription = newValue;
                controller.saveJournalEntry();
              },
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              focusNode: controller.tradeMessageTextField,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.messenger_outline_sharp),
                label: Text("Trade Message"),
                hintText: "Enter your trade message",
              ),
            ),
          ),

          //

          const SizedBox(height: 50),
        ],
      );
    });
  }
}
