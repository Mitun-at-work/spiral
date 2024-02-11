// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class JournalModel {
  final String journalOrderType;
  final String journalInstrument;
  final String jounralMarketTrend;
  final String jounralEntryStatergy;
  final double jounalEntryPrice;
  final double journalSellPrice;
  final double journalStopPrice;
  final double journalTargetPrice;
  final double journalTakeProfitPrice;
  final double jounalLotSize;
  final int journalMarketTag;
  final String journalMessage;

  // Model
  JournalModel({
    required this.journalOrderType,
    required this.journalInstrument,
    required this.jounralMarketTrend,
    required this.jounralEntryStatergy,
    required this.jounalEntryPrice,
    required this.journalSellPrice,
    required this.journalStopPrice,
    required this.journalTargetPrice,
    required this.journalTakeProfitPrice,
    required this.jounalLotSize,
    required this.journalMarketTag,
    required this.journalMessage,
  });

  factory JournalModel.fromJson(String jsonString) {
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    return JournalModel(
      journalOrderType: jsonMap['journalOrderType'] ?? '',
      journalInstrument: jsonMap['journalInstrument'] ?? '',
      jounralMarketTrend: jsonMap['jounralMarketTrend'] ?? '',
      jounralEntryStatergy: jsonMap['jounralEntryStatergy'] ?? '',
      jounalEntryPrice: jsonMap['jounalEntryPrice'] != null
          ? (jsonMap['jounalEntryPrice'] is int
              ? (jsonMap['jounalEntryPrice'] as int).toDouble()
              : jsonMap['jounalEntryPrice'])
          : 0.0,
      journalSellPrice: jsonMap['journalSellPrice'] != null
          ? (jsonMap['journalSellPrice'] is int
              ? (jsonMap['journalSellPrice'] as int).toDouble()
              : jsonMap['journalSellPrice'])
          : 0.0,
      journalStopPrice: jsonMap['journalStopPrice'] != null
          ? (jsonMap['journalStopPrice'] is int
              ? (jsonMap['journalStopPrice'] as int).toDouble()
              : jsonMap['journalStopPrice'])
          : 0.0,
      journalTargetPrice: jsonMap['journalTargetPrice'] != null
          ? (jsonMap['journalTargetPrice'] is int
              ? (jsonMap['journalTargetPrice'] as int).toDouble()
              : jsonMap['journalTargetPrice'])
          : 0.0,
      journalTakeProfitPrice: jsonMap['journalTakeProfitPrice'] != null
          ? (jsonMap['journalTakeProfitPrice'] is int
              ? (jsonMap['journalTakeProfitPrice'] as int).toDouble()
              : jsonMap['journalTakeProfitPrice'])
          : 0.0,
      jounalLotSize: jsonMap['jounalLotSize'] != null
          ? (jsonMap['jounalLotSize'] is int
              ? jsonMap['jounalLotSize']
              : (jsonMap['jounalLotSize'] as String).isEmpty
                  ? 0
                  : int.parse(jsonMap['jounalLotSize']))
          : 0,
      journalMarketTag: jsonMap['journalMarketTag'] ?? '',
      journalMessage: jsonMap['journalMessage'] ?? '',
    );
  }

  JournalModel copyWith({
    String? journalOrderType,
    String? journalInstrument,
    String? jounralMarketTrend,
    String? jounralEntryStatergy,
    double? jounalEntryPrice,
    double? journalSellPrice,
    double? journalStopPrice,
    double? journalTargetPrice,
    double? journalTakeProfitPrice,
    double? jounalLotSize,
    int? journalMarketTag,
    String? journalMessage,
  }) {
    return JournalModel(
      journalOrderType: journalOrderType ?? this.journalOrderType,
      journalInstrument: journalInstrument ?? this.journalInstrument,
      jounralMarketTrend: jounralMarketTrend ?? this.jounralMarketTrend,
      jounralEntryStatergy: jounralEntryStatergy ?? this.jounralEntryStatergy,
      jounalEntryPrice: jounalEntryPrice ?? this.jounalEntryPrice,
      journalSellPrice: journalSellPrice ?? this.journalSellPrice,
      journalStopPrice: journalStopPrice ?? this.journalStopPrice,
      journalTargetPrice: journalTargetPrice ?? this.journalTargetPrice,
      journalTakeProfitPrice:
          journalTakeProfitPrice ?? this.journalTakeProfitPrice,
      jounalLotSize: jounalLotSize ?? this.jounalLotSize,
      journalMarketTag: journalMarketTag ?? this.journalMarketTag,
      journalMessage: journalMessage ?? this.journalMessage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'journalOrderType': journalOrderType,
      'journalInstrument': journalInstrument,
      'jounralMarketTrend': jounralMarketTrend,
      'jounralEntryStatergy': jounralEntryStatergy,
      'jounalEntryPrice': jounalEntryPrice,
      'journalSellPrice': journalSellPrice,
      'journalStopPrice': journalStopPrice,
      'journalTargetPrice': journalTargetPrice,
      'journalTakeProfitPrice': journalTakeProfitPrice,
      'jounalLotSize': jounalLotSize,
      'journalMarketTag': journalMarketTag,
      'journalMessage': journalMessage,
    };
  }

  factory JournalModel.fromMap(Map<String, dynamic> map) {
    return JournalModel(
      journalOrderType: map['journalOrderType'] as String,
      journalInstrument: map['journalInstrument'] as String,
      jounralMarketTrend: map['jounralMarketTrend'] as String,
      jounralEntryStatergy: map['jounralEntryStatergy'] as String,
      jounalEntryPrice: map['jounalEntryPrice'] as double,
      journalSellPrice: map['journalSellPrice'] as double,
      journalStopPrice: map['journalStopPrice'] as double,
      journalTargetPrice: map['journalTargetPrice'] as double,
      journalTakeProfitPrice: map['journalTakeProfitPrice'] as double,
      jounalLotSize: map['jounalLotSize'] as double,
      journalMarketTag: map['journalMarketTag'] as int,
      journalMessage: map['journalMessage'] as String,
    );
  }
}
