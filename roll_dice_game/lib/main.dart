import 'package:flutter/material.dart';
import 'package:roll_dice_game/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 205, 174, 230),
            Color.fromARGB(255, 107, 12, 191)),
      ),
    ),
  );
}
