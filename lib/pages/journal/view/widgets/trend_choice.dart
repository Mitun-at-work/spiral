import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/journal/controller/jounal_controller.dart';

class TrendChoice extends StatelessWidget {
  const TrendChoice({super.key});

// List of dropdown options
  static List<String> dropdownOptions = [
    'Bullish Market',
    'Bearish Market',
    'Sideway Market',
    'Bearish Counter',
    'Bullish Counter'
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
          const Icon(Icons.turned_in_not),
          const SizedBox(width: 15),
          GetBuilder<JournalController>(builder: (controller) {
            return DropdownButton<String>(
              alignment: Alignment.bottomRight,
              focusNode: controller.orderTypeDropDown,
              underline: const SizedBox(),
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Poppins'),
              value: controller.marketType.value,
              onChanged: (value) {
                controller.marketType.value = value!;
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
