import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String activeDiceImage = 'assets/images/dice-1.png';
  int randomNum = 1;

  void rollDice() {
    setState(() {
      randomNum = Random().nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$randomNum.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(10),
                backgroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 16)),
            child: const Text('Roll the dice')),
      ],
    );
  }
}
