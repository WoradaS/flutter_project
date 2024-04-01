import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    const Color correctColor = Color.fromARGB(255, 186, 246, 133);
    const Color inCorrectColor = Color.fromARGB(255, 238, 164, 164);

    Color getColorAnswer(Map<String, Object> data) {
      return data['correct_answer'] == data['user_answer']
          ? correctColor
          : inCorrectColor;
    }

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (data) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: getColorAnswer(data),
                        shape: BoxShape.circle,
                      ),
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            data['user_answer'] as String,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.red[300]),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.blue[300]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
