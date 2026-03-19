import 'package:flutter/material.dart';
import '../../utils/responsive.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';

class WatchlistNameCard extends StatelessWidget {
  final String watchlistName;
  final VoidCallback? onEdit;
  const WatchlistNameCard({
    super.key,
    required this.watchlistName,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.hGap16(context),
        vertical: Responsive.vGap12(context),
      ),
      child: Container(
        height: Responsive.vGap50(context),
        decoration: BoxDecoration(
          color: AppColors.dividerLight,
          borderRadius: BorderRadius.circular(
            Responsive.borderRadius5(context),
          ),
          border: Border.all(
            color: AppColors.divider,
            width: Responsive.borderWidth1(context),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.black09,
              blurRadius: Responsive.blurRadius12(context),
              spreadRadius: 0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: Responsive.hGap16(context)),
              child: Text(
                watchlistName,
                style: AppTextStyles.subtitle(context).copyWith(
                  fontWeight: FontWeight.normal,
                  color: AppColors.black,
                  fontSize: Responsive.font14(context),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.edit,
                color: AppColors.grey,
                size: Responsive.iconSize24(context),
              ),
              onPressed: onEdit,
            ),
          ],
        ),
      ),
    );
  }
}
