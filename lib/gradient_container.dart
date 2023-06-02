import "package:first_app/dice_roller.dart";
import "package:flutter/material.dart";
import "package:first_app/styled_text.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.grColors, {super.key});
  final List<Color> grColors;
  
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: grColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
