import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/themes/text_theme.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme_colors.dart';

ThemeData primaryTheme = ThemeData(
    //seed color
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
    ),

    //scaffold color
    scaffoldBackgroundColor: AppColors.secondaryAccent,

    //app bar theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.secondaryColor,
      foregroundColor: AppColors.textColor,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
    ),

    //text theme
    textTheme: const TextTheme().copyWith(
      bodyMedium: MyTextTheme.bodyMedium,
      headlineMedium: MyTextTheme.headlineMedium,
      titleMedium: MyTextTheme.titleMedium,
    ),

    //card theme
    cardTheme: const CardTheme().copyWith(
      color: AppColors.secondaryColor,
      surfaceTintColor: Colors.transparent.withOpacity(0.5),
      shape: const RoundedRectangleBorder(),
      shadowColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: 16),
    ));
