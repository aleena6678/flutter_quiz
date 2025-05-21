import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    // widget. helps to access the properties of the parent widget.

    setState(() {
      currentQuestionIndex++;
    });
  }
  
  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity, // Take as much as width can.
      child: Container(
        margin: EdgeInsets.all(40), // Margin between the elements and the phone border.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Contents on the center of the column.
          crossAxisAlignment: CrossAxisAlignment.stretch, // The options buttons get stretched widely on x-axis.
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 201, 153, 203),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            textAlign: TextAlign.center, // Question get placed on the center horizontally.
            ),
            SizedBox(height: 30),
            // Question with its possible answer options
            // .map() returns an iterable.
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                }, // Next question appears.
              );
            }),
          ],
        ),
      ),
    );
  }
}