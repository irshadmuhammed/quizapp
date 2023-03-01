import 'package:flutter/material.dart';
import 'package:quizapp/Quizzler.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Quizzler(),
          ),
        ),
      ),
    );
  }
}
