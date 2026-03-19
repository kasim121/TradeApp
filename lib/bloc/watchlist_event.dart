abstract class WatchlistEvent {}

class LoadWatchlist extends WatchlistEvent {}

class SwapStocks extends WatchlistEvent {
  final int oldIndex;
  final int newIndex;

  SwapStocks(this.oldIndex, this.newIndex);
}