import 'package:flutter/material.dart';
import 'package:flutter_quiz/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: StartScreen(),
      ),
    );
  }
}