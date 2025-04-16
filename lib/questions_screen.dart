import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity, // Take as much as width can.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Q',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 30),
          AnswerButton(answerText: 'a1', onTap: (){}),
          AnswerButton(answerText: 'a2', onTap: (){}),
          AnswerButton(answerText: 'a3', onTap: (){}),
          AnswerButton(answerText: 'a4', onTap: (){}),
        ],
      ),
    );
  }
}