import 'package:demo/data/stock_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'watchlist_event.dart';
import 'watchlist_state.dart';

class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  WatchlistBloc() : super(WatchlistLoading()) {
    on<LoadWatchlist>(_onLoadWatchlist);
    on<SwapStocks>(_onSwapStocks);
  }

  void _onLoadWatchlist(LoadWatchlist event, Emitter<WatchlistState> emit) {
    final stocks = [
      StockModel(
        symbol: 'RELIANCE',
        exchange: 'NSE',
        instrumentType: 'EQ',
        price: 1374.10,
        change: -4.40,
        changePercent: -0.32,
      ),
      StockModel(
        symbol: 'HDFCBANK',
        exchange: 'NSE',
        instrumentType: 'EQ',
        price: 966.95,
        change: 0.95,
        changePercent: 0.10,
      ),
      StockModel(
        symbol: 'ASIANPAINT',
        exchange: 'NSE',
        instrumentType: 'EQ',
        price: 2537.40,
        change: 6.60,
        changePercent: 0.26,
      ),
      StockModel(
        symbol: 'NIFTY IT',
        exchange: 'IDX',
        price: 35185.65,
        change: 875.21,
        changePercent: 2.55,
      ),
      StockModel(
        symbol: 'RELIANCE SEP 1880 CE',
        exchange: 'NSE',
        instrumentType: 'Monthly',
        price: 0.00,
        change: 0.00,
        changePercent: 0.00,
      ),
      StockModel(
        symbol: 'RELIANCE SEP 1370 PE',
        exchange: 'NSE',
        instrumentType: 'Monthly',
        price: 19.20,
        change: 1.00,
        changePercent: 5.49,
      ),
      StockModel(
        symbol: 'MRF',
        exchange: 'NSE',
        instrumentType: 'EQ',
        price: 147625.00,
        change: 550.00,
        changePercent: 0.37,
      ),
      StockModel(
        symbol: 'MRF',
        exchange: 'BSE',
        instrumentType: 'EQ',
        price: 147439.45,
        change: 463.80,
        changePercent: 0.32,
      ),
    ];
    emit(WatchlistLoaded(stocks));
  }

  void _onSwapStocks(SwapStocks event, Emitter<WatchlistState> emit) {
    if (state is WatchlistLoaded) {
      final stocks = List<StockModel>.from((state as WatchlistLoaded).stocks);
      final stock = stocks.removeAt(event.oldIndex);
      stocks.insert(event.newIndex, stock);
      emit(WatchlistLoaded(stocks));
    }
  }
}
