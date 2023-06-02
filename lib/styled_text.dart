import "package:flutter/material.dart";

class StyledText extends StatelessWidget {
  StyledText(this.text, {super.key});

  String text;
  @override
  Widget build(context) {
    return Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 11, 25, 136),
            fontSize: 28,
          ),
        );
  }
}