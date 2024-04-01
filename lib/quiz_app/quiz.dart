import 'package:first_app/quiz_app/data/question.dart';
import 'package:first_app/quiz_app/questions_screen.dart';
import 'package:first_app/quiz_app/result_screen.dart';
import 'package:first_app/quiz_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

// class _QuizState extends State<Quiz> {
//   Widget? activeScreen;

//   @override
//   void initState() {
//     activeScreen = StartQuizScreen(switchScreen);
//     super.initState();
//   }

//   void switchScreen() {
//     setState(() {
//       activeScreen = const QuestionScreen();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             color: Colors.deepPurple,
//           ),
//           child: activeScreen,
//         ),
//       ),
//     );
//   }
// }

// import 'package:first_app/quiz_app/questions_screen.dart';
// import 'package:first_app/quiz_app/start_screen.dart';
// import 'package:flutter/material.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     return _QuizState();
//   }
// }

// Use Ternary Expression
class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  String activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswers(String ans) {
    selectedAnswers.add(ans);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartQuizScreen(switchScreen)
    //     : const QuestionScreen();

    Widget screenWidget = StartQuizScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswers: chooseAnswers,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(chosenAnswers: selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.deepPurple,
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
