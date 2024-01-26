class JournalModel {
  final String journalInstrument;
  final int journalOrderType;
  final double jounalEntryPrice;
  final double journalSellPrice;
  final double journalStopPrice;
  final double journalTargetPrice;
  final double journalTakeProfitPrice;
  final double jounalLotSize;
  final int journalTag;

  // Constructor
  JournalModel({
    required this.journalInstrument,
    required this.journalOrderType,
    required this.jounalEntryPrice,
    required this.journalSellPrice,
    required this.journalStopPrice,
    required this.journalTargetPrice,
    required this.journalTakeProfitPrice,
    required this.jounalLotSize,
    required this.journalTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'journalInstrument': journalInstrument,
      'journalOrderType': journalOrderType,
      'jounalEntryPrice': jounalEntryPrice,
      'journalSellPrice': journalSellPrice,
      'journalStopPrice': journalStopPrice,
      'journalTargetPrice': journalTargetPrice,
      'journalTakeProfitPrice': journalTakeProfitPrice,
      'jounalLotSize': jounalLotSize,
      'journalTag': journalTag,
    };
  }

  factory JournalModel.fromMap(Map<String, dynamic> map) {
    return JournalModel(
      journalInstrument: map['journalInstrument'] as String,
      journalOrderType: map['journalOrderType'] as int,
      jounalEntryPrice: map['jounalEntryPrice'] as double,
      journalSellPrice: map['journalSellPrice'] as double,
      journalStopPrice: map['journalStopPrice'] as double,
      journalTargetPrice: map['journalTargetPrice'] as double,
      journalTakeProfitPrice: map['journalTakeProfitPrice'] as double,
      jounalLotSize: map['jounalLotSize'] as double,
      journalTag: map['journalTag'] as int,
    );
  }
}
