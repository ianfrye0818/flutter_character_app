import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_text.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final Icon? prefixIcon;
  final String? labelText;
  const MyTextField(
      {super.key, required this.controller, this.prefixIcon, this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.textColor,
      style:
          GoogleFonts.kanit(textStyle: Theme.of(context).textTheme.bodyMedium),
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        label: MyBodyText(labelText ?? ''),
      ),
    );
  }
}
