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
