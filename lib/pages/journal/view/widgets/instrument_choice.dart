import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/journal/controller/jounal_controller.dart';

class InstrumentChoice extends StatelessWidget {
  const InstrumentChoice({super.key});

// List of dropdown options
  static List<String> dropdownOptions = [
    'NIFTY50',
    'BANKNIFTY',
    'ETHUSDT',
    'BTCUSDT',
    'EURUSD',
    'GBPUSD',
    'GBPEUR',
    'USDJPY',
    'USDCAD',
    'XAUUSD',
    'CRUDEOIL',
    'NATGAS',
    'OTHERS'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          const Icon(Icons.insert_chart_outlined_rounded),
          const SizedBox(width: 15),
          GetBuilder<JournalController>(builder: (controller) {
            return DropdownButton<String>(
              alignment: Alignment.centerRight,
              focusNode: controller.instrumentChoiceDropDown,
              underline: const SizedBox(),
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Poppins'),
              value: controller.instrumentType.value,
              onChanged: (value) {
                controller.instrumentType.value = value!;
                controller.update();
              },
              items: dropdownOptions.map((String option) {
                return DropdownMenuItem<String>(
                  alignment: Alignment.center,
                  value: option,
                  child: Text(option),
                );
              }).toList(),
            );
          }),
        ],
      ),
    );
  }
}
