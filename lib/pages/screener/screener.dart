import 'package:flutter/material.dart';
import 'package:yahoo_finance_data_reader/yahoo_finance_data_reader.dart';

class BottomSelectionWidget extends StatefulWidget {
  const BottomSelectionWidget({super.key});

  @override
  State<BottomSelectionWidget> createState() => _BottomSelectionWidgetState();
}

class _BottomSelectionWidgetState extends State<BottomSelectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yahoo Finance Example'),
      ),
      body: const RawSearch(),
    );
  }
}

class RawSearch extends StatefulWidget {
  const RawSearch({
    super.key,
  });

  @override
  State<RawSearch> createState() => _RawSearchState();
}

class _RawSearchState extends State<RawSearch> {
  @override
  Widget build(BuildContext context) {
    String ticker = 'GOOG';
    YahooFinanceDailyReader yahooFinanceDataReader =
        const YahooFinanceDailyReader();

    Future<Map<String, dynamic>> future =
        yahooFinanceDataReader.getDailyData(ticker);

    return FutureBuilder(
      future: future,
      builder:
          (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == null) {
            return const Text('No data');
          }

          Map<String, dynamic> historicalData = snapshot.data!;
          return SingleChildScrollView(
            child: Text(
              historicalData.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Text('Error ${snapshot.error}');
        }

        return const Center(
          child: SizedBox(
            height: 50,
            width: 50,
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

  String generateDescription(DateTime date, Map<String, dynamic> day) {
    return '''$date
open: ${day['open']}
close: ${day['close']}
high: ${day['high']}
low: ${day['low']}
adjclose: ${day['adjclose']}
''';
  }
}
