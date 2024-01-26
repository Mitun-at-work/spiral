import 'package:flutter/material.dart';

class JournalInfoTile extends StatelessWidget {
  const JournalInfoTile(
      {super.key,
      required this.journalInfoTitle,
      required this.jounalInfoParamter});

  final String journalInfoTitle;
  final String jounalInfoParamter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RichText(
        text: TextSpan(
          text: "$journalInfoTitle : ",
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
          children: [
            TextSpan(
              text: jounalInfoParamter,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
