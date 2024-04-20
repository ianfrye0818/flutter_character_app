import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/components/my_text.dart';
import 'package:flutter_masterclass_advanced_app/models/vocation_enum.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme_colors.dart';

class VocationCard extends StatelessWidget {
  final Vocation vocation;
  final Function(Vocation) onTap;
  final bool selected;
  const VocationCard(
      {super.key,
      required this.vocation,
      required this.onTap,
      required this.selected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(vocation);
      },
      child: Card(
        color: selected ? AppColors.secondaryColor : Colors.transparent,
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                //vocation image
                Image.asset('assets/img/vocations/${vocation.image}',
                    width: 80,
                    colorBlendMode: BlendMode.color,
                    color: !selected
                        ? Colors.black.withOpacity(0.8)
                        : Colors.transparent),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //vocation name
                      MyHeadLineText(vocation.title),
                      //vocation desc
                      MyBodyText(vocation.description),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
