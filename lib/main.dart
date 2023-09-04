import 'package:flutter/material.dart';
import 'package:roll_the_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: GradientContainer(
        [
          Color.fromRGBO(237, 28, 36, 1),
          Color.fromRGBO(122, 0, 0, 1),
        ],
      ),
    ),
  );
}
