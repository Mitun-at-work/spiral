import 'package:flutter/material.dart';
import 'package:sih24/pages/home/controller/functions/get_color.dart';

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
        "${((buyPrice - sellPrice) * lotSize).abs()}",
        style: TextStyle(
          color: getColor(buyPrice, sellPrice, orderType),
        ),
      ),
    );
  }
}
