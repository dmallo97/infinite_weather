import 'package:flutter/material.dart';

class AppColors {
  static final searchBarUnfocusedForeground = const Color(0xffFFFFFF).withOpacity(0.5);
  static final searchBarUnfocusedBackground = Colors.black.withOpacity(0.1);
  static final menuButtonUnfocusedForeground = searchBarUnfocusedForeground;
  static final menuButtonUnfocusedBackground = searchBarUnfocusedBackground;

  static const lightBlack = Color(0xff1E1E1E);
  static const boldOrange = Color(0xffF6803E);
  static const lightOrange = Color(0xffFFE2D1);
  static const lightGrey = Color(0xffD9D9D9);
  static const darkGrey = Color(0xff949393);
  static const highlight = Color(0xffB9EEFF);
  static const onHighlight = Color(0xff00C2FF);
  static const background = Colors.white;
  static const easyGradient = LinearGradient(
    colors: [
      Color(0xffFFA218),
      Color(0xffFA8E2F),
      boldOrange,
    ],
    stops: [0, 0.25, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

class ThemeCustomColors extends ThemeExtension<ThemeCustomColors> {
  final Color title;
  final Color body;
  final Color background;
  final Color foreground;
  final Color highlight;
  final Color onHighlight;

  ThemeCustomColors({
    required this.background,
    required this.foreground,
    required this.highlight,
    required this.onHighlight,
    required this.title,
    required this.body,
  }) : super();

  @override
  ThemeExtension<ThemeCustomColors> copyWith({
    Color? title,
    Color? body,
    Color? background,
    Color? foreground,
    Color? highlight,
    Color? onHighlight,
  }) {
    return ThemeCustomColors(
      background: background ?? this.background,
      foreground: foreground ?? this.foreground,
      highlight: highlight ?? this.highlight,
      onHighlight: onHighlight ?? this.onHighlight,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  @override
  ThemeExtension<ThemeCustomColors> lerp(covariant ThemeExtension<ThemeCustomColors>? other, double t) {
    if (other is! ThemeCustomColors) {
      return this;
    }
    return ThemeCustomColors(
      background: Color.lerp(background, other.background, t) ?? background,
      foreground: Color.lerp(foreground, other.foreground, t) ?? foreground,
      highlight: Color.lerp(highlight, other.highlight, t) ?? highlight,
      onHighlight: Color.lerp(onHighlight, other.onHighlight, t) ?? onHighlight,
      title: Color.lerp(title, other.title, t) ?? title,
      body: Color.lerp(body, other.body, t) ?? body,
    );
  }
}
