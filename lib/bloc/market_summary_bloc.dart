import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

class MarketSummaryState extends Equatable {
  final double niftyBank;
  final double change;
  final double percentChange;
  const MarketSummaryState({
    required this.niftyBank,
    required this.change,
    required this.percentChange,
  });
  @override
  List<Object?> get props => [niftyBank, change, percentChange];
}

abstract class MarketSummaryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class StartMarketSummaryStream extends MarketSummaryEvent {}

class StopMarketSummaryStream extends MarketSummaryEvent {}

class UpdateMarketSummary extends MarketSummaryEvent {}

class MarketSummaryBloc extends Bloc<MarketSummaryEvent, MarketSummaryState> {
  Timer? _timer;
  MarketSummaryBloc()
    : super(
        const MarketSummaryState(niftyBank: 50000, change: 0, percentChange: 0),
      ) {
    on<StartMarketSummaryStream>((event, emit) {
      _timer?.cancel();
      _timer = Timer.periodic(const Duration(seconds: 1), (_) {
        add(UpdateMarketSummary());
      });
    });
    on<UpdateMarketSummary>((event, emit) {
      final newValue =
          state.niftyBank +
          (1 - 2 * (DateTime.now().second % 2)) *
              (5 + DateTime.now().millisecond % 10);
      final change = newValue - state.niftyBank;
      final percent = (change / state.niftyBank) * 100;
      emit(
        MarketSummaryState(
          niftyBank: newValue,
          change: change,
          percentChange: percent,
        ),
      );
    });
    on<StopMarketSummaryStream>((event, emit) {
      _timer?.cancel();
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
