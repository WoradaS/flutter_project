import 'package:first_app/roll_dice_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 71, 26, 149),
            Color.fromARGB(255, 119, 83, 181)
          ],
        ),
      ),
    ),
  );
}
