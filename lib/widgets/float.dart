import 'package:flutter/material.dart';

FloatingActionButton buildFloat(BuildContext context) {
  return FloatingActionButton(
    elevation: 0,
    shape: const CircleBorder(),
    onPressed: () {
      Navigator.pushNamed(context, "journal");
    },
    child: const Icon(Icons.segment_rounded),
  );
}
