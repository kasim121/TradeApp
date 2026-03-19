import 'package:flutter/material.dart';
import 'responsive.dart';
import 'app_colors.dart';

class AppTextStyles {
  static TextStyle title(BuildContext context) => TextStyle(
        fontSize: Responsive.font14(context),
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      );

  static TextStyle subtitle(BuildContext context) => TextStyle(
        fontSize: Responsive.font12(context),
        color: AppColors.grey,
      );
}