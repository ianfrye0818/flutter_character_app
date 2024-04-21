import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/models/character_model.dart';
import 'package:flutter_masterclass_advanced_app/models/skill_model.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_text.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme_colors.dart';

class CharacterSkillslist extends StatefulWidget {
  final Character character;
  const CharacterSkillslist(this.character, {super.key});

  @override
  State<CharacterSkillslist> createState() => _CharacterSkillslistState();
}

class _CharacterSkillslistState extends State<CharacterSkillslist> {
  late List<Skill> availableSkills;
  late Skill selectedSkill;

  @override
  void initState() {
    super.initState();
    availableSkills = allSkills.where((skill) {
      return skill.vocation == widget.character.vocation;
    }).toList();

    if (widget.character.skills.isEmpty) {
      selectedSkill = availableSkills[0];
    }

    if (widget.character.skills.isNotEmpty) {
      selectedSkill = widget.character.skills.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        color: AppColors.secondaryColor.withOpacity(0.5),
        child: Column(
          children: [
            const MyHeadLineText('Choose an active skill'),
            const MyBodyText('Skills are unique to your vocation'),
            const SizedBox(height: 20),
            Row(
              children: availableSkills.map((skill) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSkill = skill;
                        widget.character.updateSkill(skill);
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(2),
                      color: skill == selectedSkill
                          ? Colors.yellow
                          : Colors.transparent,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/img/skills/${skill.image}',
                            width: 70,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 10),
            MyBodyText(selectedSkill.name),
          ],
        ),
      ),
    );
  }
}
