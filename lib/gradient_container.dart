import "package:flutter/material.dart";
import "package:first_app/styled_text.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gr_colors,{super.key});
  final List<Color> gr_colors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gr_colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Image.asset('assets/images/dice-2.png', width: 200),
      ),
    );
  }
}

