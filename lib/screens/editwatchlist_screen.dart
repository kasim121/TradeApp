import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../utils/responsive.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';
import '../bloc/watchlist_bloc.dart';
import '../bloc/watchlist_state.dart';
import '../bloc/watchlist_event.dart';
import 'widgets/watchlist_name_card.dart';
import 'widgets/reorderable_stock_list.dart';
import 'widgets/editwatchlist_action_buttons.dart';
import '../data/stock_model.dart';

class EditWatchlistScreen extends StatelessWidget {
  const EditWatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final watchlistState = context.watch<WatchlistBloc>().state;
    final stocks = (watchlistState is WatchlistLoaded) ? List.from(watchlistState.stocks) : [];
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Responsive.vGap40(context)),
        child: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.black,
              size: Responsive.iconSize24(context),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            'Edit Watchlist 1',
            style: AppTextStyles.title(context).copyWith(
              fontWeight: FontWeight.normal,
              fontSize: Responsive.font16(context),
              color: AppColors.black,
            ),
          ),
          centerTitle: false,
        ),
      ),
      body: Column(
        children: [
          WatchlistNameCard(watchlistName: 'Watchlist 1', onEdit: () {}),
          Expanded(
            child: ReorderableStockList(
              stocks: stocks.cast<StockModel>(),
              onReorder: (oldIndex, newIndex) {
                context.read<WatchlistBloc>().add(SwapStocks(oldIndex, newIndex));
              },
              onDelete: (index) {
                // Optionally implement delete logic with a new event
              },
            ),
          ),
          EditWatchlistActionButtons(
            onEditOtherWatchlists: () {},
            onSaveWatchlist: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
