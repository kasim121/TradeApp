import 'package:flutter/material.dart';
import '../../utils/responsive.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';

class SearchInstrumentBar extends StatelessWidget {
  const SearchInstrumentBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.hGap16(context),
        vertical: Responsive.vGap8(context),
      ),
      child: Container(
        height: Responsive.vGap50(context),
        decoration: BoxDecoration(
          color: AppColors.dividerLight,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: AppColors.divider,
            width: Responsive.borderWidth(context),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.black09,
              blurRadius: 12,
              spreadRadius: 0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search for instruments",
            hintStyle: AppTextStyles.subtitle(context).copyWith(
              color: AppColors.grey,
              fontWeight: FontWeight.w500,
              fontSize: Responsive.font14(context),
            ),
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.grey,
              size: Responsive.iconSize24(context),
            ),
            border: InputBorder.none,
            isCollapsed: true,
            contentPadding: EdgeInsets.symmetric(vertical: Responsive.vGap8(context)),
          ),
        ),
      ),
    );
  }
}
