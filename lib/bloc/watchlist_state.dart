import 'package:demo/data/stock_model.dart';

abstract class WatchlistState {}

class WatchlistLoading extends WatchlistState {}

class WatchlistLoaded extends WatchlistState {
  final List<StockModel> stocks;

  WatchlistLoaded(this.stocks);
}