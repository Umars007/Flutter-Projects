import 'package:flutter/material.dart';
import 'dart:math';

final randomaizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoller = 2;

  void rollDIce() {
    setState(() {
      currentDiceRoller = randomaizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/dice-$currentDiceRoller.png',
            width: 300,
            height: 300,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDIce,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text("Roll dice"),
        ),
      ],
    );
  }
}
