import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:first_app/quiz_app/answer_button.dart';
import 'package:first_app/quiz_app/data/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswers});

  final void Function(String ans) onSelectAnswers;

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionNumber = 0;

  void answersQuestion(String selectedAnswer) {
    widget.onSelectAnswers(selectedAnswer);
    setState(() {
      currentQuestionNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionNumber];

    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.lato(
                  color: Color.fromARGB(255, 158, 148, 234),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...currentQuestion.shuffledAnswers.map((answer) {
                return AnswersButton(
                  answerText: answer,
                  onTap: () => answersQuestion(answer),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
