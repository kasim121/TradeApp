import 'package:flutter/material.dart';

import '../../utils/responsive.dart';
import '../../utils/app_colors.dart';

class AppDivider extends StatelessWidget {
  final double? height;
  final double? thickness;
  final Color? color;
  const AppDivider({
    this.height,
    this.thickness,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? AppColors.grey300,
      thickness: thickness ?? Responsive.dividerWidth(context),
      height: height ?? Responsive.dividerHeight15(context),
    );
  }
}
