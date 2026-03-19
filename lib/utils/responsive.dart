import 'package:flutter/material.dart';

class Responsive {
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double hGap4(BuildContext context) => 4 / 375 * screenWidth(context);
  static double hGap6(BuildContext context) => 6 / 375 * screenWidth(context);
  static double hGap8(BuildContext context) => 8 / 375 * screenWidth(context);
  static double hGap12(BuildContext context) => 12 / 375 * screenWidth(context);
  static double hGap14(BuildContext context) => 14 / 375 * screenWidth(context);
  static double hGap16(BuildContext context) => 16 / 375 * screenWidth(context);
  static double hGap20(BuildContext context) => 20 / 375 * screenWidth(context);
  static double hGap40(BuildContext context) => 40 / 375 * screenWidth(context);

  static double vGap4(BuildContext context) => 4 / 812 * screenHeight(context);
  static double vGap8(BuildContext context) => 8 / 812 * screenHeight(context);
  static double vGap12(BuildContext context) =>
      12 / 812 * screenHeight(context);

  static double vGap40(BuildContext context) =>
      40 / 812 * screenHeight(context);
  static double vGap48(BuildContext context) =>
      48 / 812 * screenHeight(context);
  static double vGap50(BuildContext context) =>
      50 / 812 * screenHeight(context);

  static double font10(BuildContext context) => 10 / 375 * screenWidth(context);
  static double font12(BuildContext context) => 12 / 375 * screenWidth(context);
  static double font14(BuildContext context) => 14 / 375 * screenWidth(context);
  static double font16(BuildContext context) => 16 / 375 * screenWidth(context);

  static double iconSize20(BuildContext context) =>
      20 / 375 * screenWidth(context);
  static double iconSize24(BuildContext context) =>
      24 / 375 * screenWidth(context);

  static double borderWidth(BuildContext context) =>
      1.9 / 375 * screenWidth(context);
  static double borderWidth1(BuildContext context) =>
      1 / 375 * screenWidth(context);

  static double borderRadius5(BuildContext context) =>
      5 / 375 * screenWidth(context);
  static double borderRadius10(BuildContext context) =>
      10 / 375 * screenWidth(context);
  static double borderRadius12(BuildContext context) =>
      12 / 375 * screenWidth(context);

  static double blurRadius12(BuildContext context) =>
      12 / 375 * screenWidth(context);

  static double height48(BuildContext context) =>
      48 / 812 * screenHeight(context);

  static double hPadding6(BuildContext context) =>
      6 / 375 * screenWidth(context);
  static double hPadding8(BuildContext context) =>
      8 / 375 * screenWidth(context);
  static double hPadding12(BuildContext context) =>
      12 / 375 * screenWidth(context);
  static double hPadding16(BuildContext context) =>
      16 / 375 * screenWidth(context);
  static double hPadding20(BuildContext context) =>
      20 / 375 * screenWidth(context);

  static double vPadding8(BuildContext context) =>
      8 / 812 * screenHeight(context);
  static double vPadding12(BuildContext context) =>
      12 / 812 * screenHeight(context);

  static double dividerWidth(BuildContext context) =>
      1 / 375 * screenWidth(context);
  static double dividerHeight15(BuildContext context) =>
      1.5 / 375 * screenWidth(context);
}
