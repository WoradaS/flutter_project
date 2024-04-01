import 'package:flutter/material.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
        backgroundColor: const Color.fromARGB(255, 44, 22, 81),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answerText,
        style: const TextStyle(
          fontSize: 12,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
