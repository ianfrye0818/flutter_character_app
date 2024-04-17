import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme_colors.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.character});
  final String character;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(character),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward, color: AppColors.textColor))
          ],
        ),
      ),
    );
  }
}
