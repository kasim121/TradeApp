import 'package:flutter/material.dart';
import '../../utils/responsive.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';

class EditWatchlistActionButtons extends StatelessWidget {
  final VoidCallback? onEditOtherWatchlists;
  final VoidCallback? onSaveWatchlist;
  const EditWatchlistActionButtons({
    super.key,
    this.onEditOtherWatchlists,
    this.onSaveWatchlist,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Responsive.hGap16(context),
        Responsive.vGap12(context),
        Responsive.hGap16(context),
        Responsive.vGap8(context),
      ),
      child: Column(
        children: [
          OutlinedButton(
            onPressed: onEditOtherWatchlists,
            style: OutlinedButton.styleFrom(
              minimumSize: Size.fromHeight(Responsive.vGap50(context)),
              side: BorderSide(color: AppColors.black, width: Responsive.borderWidth1(context)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  Responsive.hGap8(context),
                ),
              ),
            ),
            child: Text(
              'Edit other watchlists',
              style: AppTextStyles.subtitle(context).copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.bold,
                fontSize: Responsive.font14(context),
              ),
            ),
          ),
          SizedBox(height: Responsive.vGap12(context)),
          SizedBox(
            width: double.infinity,
            height: Responsive.vGap50(context),
            child: ElevatedButton(
              onPressed: onSaveWatchlist,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    Responsive.hGap8(context),
                  ),
                ),
              ),
              child: Text(
                'Save Watchlist',
                style: AppTextStyles.subtitle(context).copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: Responsive.font14(context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
