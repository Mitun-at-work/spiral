import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sih24/pages/journal/controller/jounal_controller.dart';

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
                controller.exitPriceTextField.requestFocus();
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
                controller.stopPointsTextField.requestFocus();
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
              focusNode: controller.stopPointsTextField,
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
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              focusNode: controller.stopPointsTextField,
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.shield_outlined),
                label: Text("Stop Loss Points"),
                hintText: "Enter your SL points",
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
