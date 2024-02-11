import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih24/pages/home/controller/home_controller.dart';
import 'package:sih24/pages/home/model/journal_model.dart';
import 'package:sih24/pages/home/view/widgets/build_app_bar.dart';
import 'package:sih24/pages/home/view/widgets/journal_tile.dart';
import 'package:sih24/widgets/float.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildFloat(context),
      appBar: buildAppBar(),
      body: SafeArea(
        child: GetBuilder<HomeController>(builder: (controller) {
          return ListView.builder(
            itemCount: controller.journalData.length,
            itemBuilder: (context, index) {
              JournalModel journalModelFromDict = JournalModel.fromJson(
                  controller.journalData[index].toString());
              return JournalTile(
                journalModel: journalModelFromDict,
              );
            },
          );
        }),
      ),
    );
  }
}
