import 'dart:math';
import 'package:flutter/material.dart';

class Diceroller extends StatefulWidget {
  const Diceroller({super.key});

  @override
  State<Diceroller> createState() {
    return _DicerollerState();
  }
}

class _DicerollerState extends State<Diceroller> {
  final randomizer = Random();
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll =
          randomizer.nextInt(6) + 1; // gives random number between 1 and 6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.all(16.0),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
