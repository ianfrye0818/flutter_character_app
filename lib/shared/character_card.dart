import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/services/character_provider.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_text.dart';
import 'package:flutter_masterclass_advanced_app/models/character_model.dart';
import 'package:flutter_masterclass_advanced_app/views/profile/profile_screen.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme_colors.dart';
import 'package:provider12/provider.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.character});
  final Character character;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(character.id),
      onDismissed: (direction) {
        Provider.of<CharacterProvider>(context, listen: false)
            .removeCharacter(character);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: AppColors.successColor,
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 2),
            dismissDirection: DismissDirection.down,
            showCloseIcon: true,
            content: const Text('Character Successfully Deleted'),
          ),
        );
      },
      background: Container(
          padding: const EdgeInsets.only(right: 25),
          color: AppColors.primaryColor,
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.delete,
            color: AppColors.textColor,
            size: 30,
          )),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Hero(
                    tag: character.id.toString(),
                    child: Image.asset(
                      'assets/img/vocations/${character.vocation.image}',
                      width: 80,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(character.name),
                      MyHeadLineText(character.vocation.title)
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(character: character),
                    ),
                  );
                },
                icon: Icon(Icons.arrow_forward, color: AppColors.textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
