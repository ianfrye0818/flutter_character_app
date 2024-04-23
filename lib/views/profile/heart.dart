import 'package:flutter/material.dart';
import 'package:flutter_masterclass_advanced_app/models/character_model.dart';
import 'package:flutter_masterclass_advanced_app/themes/theme_colors.dart';

class Heart extends StatefulWidget {
  const Heart({super.key, required this.character});

  final Character character;

  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  late AnimationController _heartController;
  late Animation _sizeAnimation;

  //tween(between) - represents the transition between two values
  //tween sequence - a list of tweens that can be done for one animation

  @override
  void initState() {
    _heartController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _sizeAnimation = TweenSequence([
      TweenSequenceItem<double>(
        tween: Tween(begin: 25, end: 40),
        weight: 50,
      ),
      TweenSequenceItem<double>(
        tween: Tween(begin: 40, end: 25),
        weight: 50,
      ),
    ]).animate(_heartController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _sizeAnimation,
        builder: (context, child) {
          return IconButton(
            icon: Icon(
              Icons.favorite,
              color: widget.character.isFav
                  ? AppColors.primaryColor
                  : Colors.grey.shade700,
              size: _sizeAnimation.value,
            ),
            onPressed: () {
              _heartController.reset();
              _heartController.forward();
              setState(() {
                widget.character.toggleIsFav();
              });
            },
          );
        });
  }
}
