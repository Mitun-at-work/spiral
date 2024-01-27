import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/journal/controller/jounal_controller.dart';
import 'package:sih24/pages/journal/view/widgets/entry_details.dart';
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
              return const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  OrderType(),
                  InstrumentChoice(),
                  TrendChoice(),
                  StatergyChoice(),
                  EntryDetails(),
                  SizedBox(height: 50),
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
