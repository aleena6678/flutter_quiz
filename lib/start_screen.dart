import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget
{
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(250, 255, 255, 255),
          ),
          SizedBox(height: 80),
          Text('Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Quiz()),
              );
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            // icon: Icon(Icons.arrow_right_alt),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}