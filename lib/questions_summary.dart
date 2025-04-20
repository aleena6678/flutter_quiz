import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            // 'as' helps in type casting.
            Text(((data['question_index'] as int) + 1).toString()),
            Column(
              children: [
                Text(data['question'] as String),
                SizedBox(height: 5),
                Text(data['user_answer'] as String),
                Text(data['correct_answer'] as String),
              ],
            ),
          ],
        );
      }).toList(), // Iterable object can be converted to List.
    );
  }
}