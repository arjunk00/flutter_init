import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) +
          1; //generates random number between 0 and 5 and adds 1 to it.
    });
  }

  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        const SizedBox(
          height: 20,
        ), //sized box has fixed width and height, whereas container is flexible
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: EdgeInsets.only(top: 20),//values in px
            foregroundColor: Colors.amber,
            textStyle:
                const TextStyle(fontFamily: 'custom', fontSize: 28), //values in px
          ),
          child: StyledText("Roll Dice"),
        ),
      ],
    );
  }
}
