import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme_colors.dart';

ThemeData primaryTheme = ThemeData(
  //seed color
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryColor,
  ),

  //scaffold color
  scaffoldBackgroundColor: AppColors.secondaryAccent,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.secondaryColor,
    foregroundColor: AppColors.textColor,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),
);
