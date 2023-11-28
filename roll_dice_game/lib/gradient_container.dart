import 'package:flutter/material.dart';
import 'package:roll_dice_game/dice_roller.dart';

var startaligment = Alignment.topLeft;
var endaligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startaligment,
          end: endaligment,
        ),
      ),
      child: DiceRoller(),
    );
  }
}
