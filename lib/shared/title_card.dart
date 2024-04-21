import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_text.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme_colors.dart';

class TitleCard extends StatelessWidget {
  final String title;
  final String text;
  const TitleCard({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
      Center(
        child: MyHeadLineText(title),
      ),
      Center(
        child: MyBodyText(text),
      ),
      const SizedBox(height: 30),
    ]);
  }
}
