import 'package:flutter/material.dart';

class HomescreenStyledText extends StatelessWidget {
  const HomescreenStyledText(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
