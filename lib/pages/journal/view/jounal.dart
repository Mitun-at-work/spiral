import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/journal/controller/jounal_controller.dart';
import 'package:sih24/pages/journal/view/widgets/instrument_choice.dart';
import 'package:sih24/pages/journal/view/widgets/order_type.dart';

class JournalScreen extends StatelessWidget {
  const JournalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.auto_awesome),
      ),
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
                        label: Text("Stop Loss Points"),
                        hintText: "Enter your SL points",
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
