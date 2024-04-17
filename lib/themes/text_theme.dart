import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme_colors.dart';

class MyTextTheme {
  static TextStyle bodyMedium = TextStyle(
    color: AppColors.textColor,
    fontSize: 16,
    letterSpacing: 1,
  );
  static TextStyle headlineMedium = TextStyle(
    color: AppColors.titleColor,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 1,
  );
  static TextStyle titleMedium = TextStyle(
    color: AppColors.titleColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
  );
}
