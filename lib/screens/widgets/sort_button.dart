import 'package:demo/screens/editwatchlist_screen.dart';
import 'package:flutter/material.dart';
import '../../utils/app_text_styles.dart';
import '../../utils/responsive.dart';
import '../../utils/app_colors.dart';

class SortButton extends StatelessWidget {
  const SortButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.hPadding20(context),
        vertical: Responsive.vPadding8(context),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: InkWell(
            onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => EditWatchlistScreen()),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: Responsive.hPadding8(context),
              vertical: Responsive.vPadding8(context),
            ),
            decoration: BoxDecoration(
              color: AppColors.grey300, 
              borderRadius: BorderRadius.circular(Responsive.borderRadius10(context)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.tune, 
                  size: Responsive.iconSize24(context), 
                  color: AppColors.black,
                ),
                SizedBox(width: Responsive.hGap6(context)),
                Text(
                  "Sort by",
                  style: AppTextStyles.subtitle(context).copyWith(
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
