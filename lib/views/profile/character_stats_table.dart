import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/shared/my_text.dart';
import 'package:flutter_masterclass_advanced_app/models/character_model.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme_colors.dart';

class CharacterStatsTable extends StatefulWidget {
  final Character character;
  const CharacterStatsTable(this.character, {super.key});

  @override
  State<CharacterStatsTable> createState() => _CharacterStatsTableState();
}

class _CharacterStatsTableState extends State<CharacterStatsTable> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(children: [
        // available points
        Container(
          color: AppColors.secondaryColor,
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              AnimatedRotation(
                turns: turns,
                duration: const Duration(milliseconds: 200),
                child: Icon(Icons.star,
                    color: widget.character.points > 0
                        ? Colors.yellow
                        : Colors.grey),
              ),
              const SizedBox(width: 20),
              const MyBodyText('Stat points avaialble:'),
              const Expanded(child: SizedBox(width: 20)),
              MyHeadLineText(widget.character.points.toString()),
            ],
          ),
        ),
        // stats table

        Table(
          children: widget.character.statsAsList.map((stat) {
            return TableRow(
              decoration: BoxDecoration(
                color: AppColors.secondaryColor.withOpacity(0.5),
              ),
              children: [
                //stat title
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyBodyText(stat['title']!.toUpperCase()),
                  ),
                ),

                //stat value
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyBodyText(stat['value']!),
                  ),
                ),
                //icon to increaset stats
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: IconButton(
                    icon: Icon(Icons.arrow_upward, color: AppColors.textColor),
                    onPressed: () {
                      setState(() {
                        widget.character.increaseStat(stat['title']!);
                        turns += 0.5;
                      });
                    },
                  ),
                ),

                //icon to decrease stat
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        widget.character.descreaseStat(stat['title']!);
                        turns -= 0.5;
                      });
                    },
                    icon:
                        Icon(Icons.arrow_downward, color: AppColors.textColor),
                  ),
                ),
              ],
            );
          }).toList(),
        )
      ]),
    );
  }
}
