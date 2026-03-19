import 'package:flutter/material.dart';
import '../../utils/app_text_styles.dart';
import '../../utils/app_colors.dart';
import '../../utils/responsive.dart';

const List<Tab> watchlistTabs = [
  Tab(text: 'Watchlist 1'),
  Tab(text: 'Watchlist 5'),
  Tab(text: 'Watchlist 6'),
];

class WatchlistTabs extends StatelessWidget {
  const WatchlistTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: AppColors.black,
      labelColor: AppColors.black,
      unselectedLabelColor: AppColors.grey,
      labelStyle: AppTextStyles.title(context),
      unselectedLabelStyle: AppTextStyles.subtitle(context).copyWith(fontWeight: FontWeight.bold),
      dividerColor: AppColors.divider,
      dividerHeight: Responsive.dividerHeight15(context),
      tabs: watchlistTabs,
    );
  }
}
