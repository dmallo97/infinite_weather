import 'package:flutter/material.dart';
import 'package:infinite_weather/config/style/app_colors.dart';

class AppFontStyles {
  static const gilroy = 'Gilroy';
  static TextStyle get getTitleBold => TextStyle(
        fontFamily: gilroy,
        fontSize: 16,
        fontWeight: FontWeightType.bold.getFontWeight(),
      );

  static TextStyle get getBodyReg => TextStyle(
        fontFamily: gilroy,
        fontSize: 12,
        fontWeight: FontWeightType.regular.getFontWeight(),
      );

  static TextStyle get getBodyMed => TextStyle(
        fontFamily: gilroy,
        fontSize: 12,
        fontWeight: FontWeightType.medium.getFontWeight(),
      );
  
  static TextStyle get getBodySemiBold => TextStyle(
        fontFamily: gilroy,
        fontSize: 12,
        fontWeight: FontWeightType.semiBold.getFontWeight(),
      );

  static TextStyle get searchBarInactive => TextStyle(
        fontFamily: gilroy,
        fontSize: 16,
        fontWeight: FontWeightType.medium.getFontWeight(),
        color: AppColors.searchBarUnfocusedForeground,
      );

  static TextStyle get homeCategoryCardLabel => TextStyle(
        fontFamily: gilroy,
        fontSize: 12,
        fontWeight: FontWeightType.semiBold.getFontWeight(),
        color: AppColors.lightBlack,
      );
}

enum FontWeightType {
  black,
  extraBold,
  bold,
  semiBold,
  medium,
  regular,
  light,
  ultraLight,
  thin;

  FontWeight getFontWeight() {
    switch (this) {
      case black:
        return FontWeight.w900;
      case extraBold:
        return FontWeight.w800;
      case bold:
        return FontWeight.w700;
      case semiBold:
        return FontWeight.w600;
      case medium:
        return FontWeight.w500;
      case regular:
        return FontWeight.w400;
      case light:
        return FontWeight.w300;
      case ultraLight:
        return FontWeight.w200;
      case thin:
        return FontWeight.w100;
      default:
        return FontWeight.normal;
    }
  }
}
