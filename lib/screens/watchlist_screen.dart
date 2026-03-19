import 'package:demo/utils/app_colors.dart';
import 'package:demo/utils/responsive.dart';
import 'package:demo/screens/widgets/stock_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/watchlist_bloc.dart';
import '../bloc/watchlist_event.dart';
import '../bloc/watchlist_state.dart';
import 'widgets/market_summary_header.dart';
import 'widgets/search_bar.dart';
import 'widgets/sort_button.dart';
import 'widgets/watchlist_tabs.dart';
import 'widgets/app_divider.dart';
import '../bloc/market_summary_bloc.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MarketSummaryHeader(),
            SizedBox(height: Responsive.hGap16(context),),
            SearchInstrumentBar(),
            Expanded(
              child: DefaultTabController(
                length: 3, // Consider making this dynamic if possible
                child: Column(
                  children: [
                    const WatchlistTabs(),
                    const SortButton(),
                    AppDivider(),
                    Expanded(
                      child: TabBarView(
                        children: [
                          BlocBuilder<WatchlistBloc, WatchlistState>(
                            builder: (context, state) {
                              if (state is WatchlistLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else if (state is WatchlistLoaded) {
                                return ListView.separated(
                                  itemCount: state.stocks.length,
                                  separatorBuilder: (context, index) =>
                                      const AppDivider(),
                                  itemBuilder: (context, index) {
                                    final stock = state.stocks[index];
                                    return StockTile(stock: stock);
                                  },
                                );
                              }
                              return const SizedBox.shrink();
                            },
                          ),
                          Center(child: Text('Tab 2 content')),
                          Center(child: Text('Tab 3 content')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: Responsive.vGap48(context),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.black,
            unselectedItemColor: AppColors.grey,
            iconSize: Responsive.iconSize20(context),
            selectedFontSize: Responsive.font10(context),
            unselectedFontSize: Responsive.font10(context),
            selectedLabelStyle:  const TextStyle(fontWeight: FontWeight.w500),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border),
                label: 'Watchlist',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.flash_on),
                label: 'GTT+',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.work_outline),
                label: 'Portfolio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_outlined),
                label: 'Funds',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ],
            onTap: (index) {
            
            },
          ),
        ),
      ),
    );
  }
}
