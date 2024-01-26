import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/journal/controller/jounal_controller.dart';

class OrderType extends StatelessWidget {
  const OrderType({super.key});

// List of dropdown options
  static List<String> dropdownOptions = [
    'Market Buy Order',
    'Market Sell Order',
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
          const Icon(Icons.info_outline_rounded),
          const SizedBox(width: 15),
          GetBuilder<JournalController>(builder: (controller) {
            return DropdownButton<String>(
              alignment: Alignment.centerRight,
              focusNode: controller.orderTypeDropDown,
              underline: const SizedBox(),
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Poppins'),
              value: controller.buyType.value,
              onChanged: (value) {
                controller.buyType.value = value!;
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
