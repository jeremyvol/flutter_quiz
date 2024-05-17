import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return Column(
      children: summaryData.map((result) {
        return Row(children: [
          Text(((result['question_index'] as int) + 1).toString()),
          Expanded(
            child: Column(
              children: [
                Text(result['question'] as String),
                const SizedBox(
                  height: 5,
                ),
                Text(result['user_answer'] as String),
                Text(result['correct_answer'] as String),
              ],
            ),
          ),
        ]);
      }).toList(),
    );
  }
}
