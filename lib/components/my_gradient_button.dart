import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme_colors.dart';

class MyGradientButton extends StatelessWidget {
  const MyGradientButton(
      {super.key, required this.onPressed, required this.child});
  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
              colors: [AppColors.primaryColor, AppColors.primaryAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: child),
    );
  }
}
