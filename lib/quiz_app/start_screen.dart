import 'package:flutter/material.dart';

class StartQuizScreen extends StatelessWidget {
  const StartQuizScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Opacity(
            //   opacity: 0.6,
            //   child: Image.asset(
            //     'assets/images/quiz-logo.png',
            //     width: 300,
            //     height: 300,
            //   ),
            // ),
            Image.asset('assets/images/quiz-logo.png',
                width: 300,
                height: 300,
                color: const Color.fromARGB(217, 250, 250, 250)),
            const SizedBox(height: 64),
            const Text(
              "Learn Flutter the func way!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 32),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.account_tree_sharp),
              label: const Text(
                "Start Quiz",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
