import 'package:flutter/material.dart';
import 'package:sih24/pages/home/model/journal_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: CircleAvatar(
                        radius: 45,
                        child: Icon(
                          Icons.trending_up,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "BANKNIFTY",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              for (int i = 0; i < 8; i++)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: ListTile(
                    title: const Text(
                      "Buy Price",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: const Text(
                      "The price at the share is bought",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    trailing: const Text(
                      "200",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    onTap: () {},
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
