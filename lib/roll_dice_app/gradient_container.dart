import 'package:first_app/roll_dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

// Variables
const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  // const GradientContainer.purple({super.key})
  //     : colors = [Colors.blue, Colors.amber, Colors.pink];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
