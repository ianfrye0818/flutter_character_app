import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/views/profile/character_skill_list.dart';
import 'package:flutter_masterclass_advanced_app/views/profile/character_stats_table.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_gradient_button.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_text.dart';
import 'package:flutter_masterclass_advanced_app/models/character_model.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme_colors.dart';

class ProfileScreen extends StatelessWidget {
  final Character character;
  const ProfileScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyBodyText(character.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //basic info - image, vocation, description
            Container(
              padding: const EdgeInsets.all(16),
              color: AppColors.secondaryColor.withOpacity(0.3),
              child: Row(children: [
                Image.asset('assets/img/vocations/${character.vocation.image}',
                    width: 140, height: 140),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyHeadLineText(character.vocation.title),
                      MyBodyText(character.vocation.description),
                    ],
                  ),
                ),
              ]),
            ),
            const SizedBox(height: 20),
            Center(
              child: Icon(Icons.code, color: AppColors.primaryColor),
            ),
            //weapon and ability
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                color: AppColors.secondaryColor.withOpacity(0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //slogan
                    const MyHeadLineText('Slogan'),
                    MyBodyText(character.slogan),
                    const SizedBox(height: 10),
                    //weapont
                    const MyHeadLineText('Weapon'),
                    MyBodyText(character.vocation.weapon),
                    const SizedBox(height: 10),
                    //ability
                    const MyHeadLineText('Ability'),
                    MyBodyText(character.vocation.ability),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            //stats and skills
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  CharacterStatsTable(character),
                  CharacterSkillslist(character),
                ],
              ),
            ),
            //save button
            Container(
              margin: const EdgeInsets.only(bottom: 40),
              child: MyGradientButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      showCloseIcon: true,
                      duration: const Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: AppColors.successColor,
                      content:
                          const MyHeadLineText('Character Saved Successfully!'),
                    ),
                  );
                  Navigator.pop(context);
                },
                child: const MyBodyText('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
