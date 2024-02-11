import 'package:flutter/material.dart';
import 'package:sih24/pages/home/controller/functions/get_color.dart';
import 'package:sih24/pages/home/model/journal_model.dart';
import 'package:sih24/utils/export_headers.dart';

class JournalTile extends StatelessWidget {
  const JournalTile({
    super.key,
    required this.journalModel,
  });

  final JournalModel journalModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      // onTap: () => Get.to(DetailPage(journalModel: journalModel)),
      subtitle: Text(
        "${journalModel.jounalLotSize.round().toString()} Lots",
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey),
      ),
      title: Text(
        "${journalModel.jounalEntryPrice - journalModel.journalSellPrice}",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.green,
        ),
      ),
      leading: Text(
        journalModel.journalInstrument,
        style: TextStyle(
          color: journalModel.journalOrderType == 'Sell'
              ? Colors.red
              : Colors.blue,
        ),
      ),
      trailing: Text(
        "${((journalModel.jounalEntryPrice - journalModel.journalSellPrice) * journalModel.jounalLotSize).abs()}",
        style: TextStyle(
          color: getColor(
              journalModel.jounalEntryPrice,
              journalModel.journalSellPrice,
              journalModel.journalOrderType == "Buy" ? 1 : 0),
        ),
      ),
    );
  }
}
