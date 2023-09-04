import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_the_dice/dice_roller.dart';
import 'package:roll_the_dice/homescreen_styled_text.dart';

const startAlignment = Alignment.bottomLeft;
const endAlignment = Alignment.topRight;
// final mainRed = Color.fromRGBO(237, 28, 36, 1);
// final mainCream = Color.fromRGBO(255, 243, 235, 1);
// final mainDark = Color.fromRGBO(35, 31, 32, 1)

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.colors, {
    super.key,
  });

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
      ),
    );
  }
}
