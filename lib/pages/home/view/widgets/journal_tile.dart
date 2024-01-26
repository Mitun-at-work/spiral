import 'package:flutter/material.dart';
import 'package:sih24/pages/home/controller/functions/get_color.dart';
import 'package:sih24/pages/home/view/widgets/journal_info_tile.dart';

class JournalTile extends StatelessWidget {
  const JournalTile({
    super.key,
    required this.instrumentSymbol,
    required this.buyPrice,
    required this.sellPrice,
    required this.lotSize,
    required this.orderType,
  });

  final int orderType;
  final String instrumentSymbol;
  final double buyPrice, sellPrice, lotSize;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      subtitle: Text(
        "${lotSize.round().toString()} Lots",
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey),
      ),
      title: Text(
        "$buyPrice - $sellPrice",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.green,
        ),
      ),
      leading: Text(
        instrumentSymbol,
        style: TextStyle(
          color: orderType == 0 ? Colors.red : Colors.blue,
        ),
      ),
      trailing: Text(
        "${(buyPrice - sellPrice).abs()}",
        style: TextStyle(
          color: getColor(buyPrice, sellPrice, orderType),
        ),
      ),
      childrenPadding: const EdgeInsets.all(0),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      expandedAlignment: Alignment.centerLeft,
      children: const [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            JournalInfoTile(
              journalInfoTitle: "Target",
              jounalInfoParamter: "200",
            ),
            JournalInfoTile(
              journalInfoTitle: "Stop Loss",
              jounalInfoParamter: "210",
            ),
            JournalInfoTile(
              journalInfoTitle: "Take Profit",
              jounalInfoParamter: "180",
            )
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            JournalInfoTile(
              journalInfoTitle: "Trend",
              jounalInfoParamter: "Sideways",
            ),
            JournalInfoTile(
              journalInfoTitle: "Risk:Reward",
              jounalInfoParamter: "1:7",
            ),
            JournalInfoTile(
              journalInfoTitle: "Tag",
              jounalInfoParamter: "Forex",
            )
          ],
        ),
        // )
        Divider(),
      ],
    );
  }
}
