import 'package:flutter/material.dart';
import 'package:quiz/views/git_started.dart';
import 'package:quiz/views/quiz_screen.dart';
import 'package:quiz/views/result.dart';
import 'package:quiz/views/submit.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'quiz': (context) => const QuizScreen(),
        'result': (context) => Result(),
        'submit': (context) => const Submit(),
      },
      home: const GitStarted(),
    );
  }
}
