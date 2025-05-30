import 'package:flutter/material.dart';
import 'package:flutter_quiz/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView( // This particular column is scrollable.
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(data);
          }).toList(), // Iterable object can be converted to List.
        ),
      ),
    );
  }
}