import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/market_summary_bloc.dart';
import 'bloc/watchlist_bloc.dart';
import 'bloc/watchlist_event.dart';
import 'screens/watchlist_screen.dart';

void main() {
  runApp(const TradeApp());
}

class TradeApp extends StatelessWidget {
  const TradeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MarketSummaryBloc()..add(StartMarketSummaryStream())),
        BlocProvider(create: (_) => WatchlistBloc()..add(LoadWatchlist())),
      ],
      child: MaterialApp(
        title: 'Trade App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        debugShowCheckedModeBanner: false,
        home: const WatchlistScreen(),
      ),
    );
  }
}
