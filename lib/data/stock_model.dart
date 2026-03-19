class StockModel {
  final String symbol;
  final String exchange;
  final double price;
  final double change;
  final double changePercent;
  final String? instrumentType; 
  final String? expiry;         

  StockModel({
    required this.symbol,
    required this.exchange,
    required this.price,
    required this.change,
    required this.changePercent,
    this.instrumentType,
    this.expiry,
  });

  StockModel copyWith({
    String? symbol,
    String? exchange,
    double? price,
    double? change,
    double? changePercent,
    String? instrumentType,
    String? expiry,
  }) {
    return StockModel(
      symbol: symbol ?? this.symbol,
      exchange: exchange ?? this.exchange,
      price: price ?? this.price,
      change: change ?? this.change,
      changePercent: changePercent ?? this.changePercent,
      instrumentType: instrumentType ?? this.instrumentType,
      expiry: expiry ?? this.expiry,
    );
  }
}