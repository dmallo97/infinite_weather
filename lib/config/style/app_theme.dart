import 'package:flutter/material.dart';
import 'package:infinite_weather/config/style/app_colors.dart';
import 'package:infinite_weather/config/style/custom_theme.dart';

class InfiniteWeatherLightTheme implements CustomTheme {
  @override
  ThemeExtension get customColorPalette => ThemeCustomColors(
        background: AppColors.background,
        foreground: AppColors.lightBlack,
        highlight: AppColors.highlight,
        onHighlight: AppColors.onHighlight,
        title: AppColors.lightBlack,
        body: AppColors.darkGrey,
      );

  @override
  ThemeData getTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.lightOrange,
        onPrimary: AppColors.boldOrange,
        secondary: AppColors.highlight,
        onSecondary: AppColors.onHighlight,
        tertiary: AppColors.lightGrey,
        onTertiary: AppColors.darkGrey,
        background: AppColors.background,
        onBackground: AppColors.lightBlack,
      ),
      extensions: [customColorPalette],
    );
  }
}
