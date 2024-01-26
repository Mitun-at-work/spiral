import 'package:flutter/material.dart';

Color getColor(buyPrice, sellPrice, orderType) {
  if (buyPrice - sellPrice == 0) return Colors.blueGrey;
  if (buyPrice - sellPrice < 0 && orderType == 1 ||
      orderType == 0 && buyPrice - sellPrice > 0) {
    return Colors.blue;
  }
  return Colors.red;
}
