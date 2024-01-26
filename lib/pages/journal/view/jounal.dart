import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/journal/controller/jounal_controller.dart';
import 'package:sih24/pages/journal/view/widgets/instrument_choice.dart';
import 'package:sih24/pages/journal/view/widgets/order_type.dart';
import 'package:sih24/pages/journal/view/widgets/statergy_choice.dart';
import 'package:sih24/pages/journal/view/widgets/trend_choice.dart';

class JournalScreen extends StatelessWidget {
  const JournalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildJournalFloat(),
      appBar: AppBar(
        elevation: 1,
        title: const Text(
          "Journal Entry",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 10,
            ),
            child: GetBuilder<JournalController>(builder: (controller) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const OrderType(),
                  const InstrumentChoice(),
                  const TrendChoice(),
                  const StatergyChoice(),
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

                  //
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
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
                      focusNode: controller.stopPointsTextField,
                      keyboardType: const TextInputType.numberWithOptions(),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.shield_outlined),
                        label: Text("Stop Loss Points"),
                        hintText: "Enter your SL points",
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}

buildJournalFloat() {
  return GetBuilder<JournalController>(builder: (controller) {
    if (controller.marketType.value == "1") {
      return FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.auto_awesome),
      );
    }
    return const SizedBox();
  });
}
