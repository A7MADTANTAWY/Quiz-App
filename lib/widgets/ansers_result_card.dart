import 'package:flutter/material.dart';

class AnswersResultCard extends StatelessWidget {
  String questionIndex;
  String question;
  String userAnswer;
  String correctAnswer;

  AnswersResultCard({
    super.key,
    required this.correctAnswer,
    required this.question,
    required this.questionIndex,
    required this.userAnswer, required bool isCorrect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.green, // Warm orange for question box
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            height: 70,
            width: 70,
            child: Center(
              child: Text(
                questionIndex,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question,
                  style: const TextStyle(
                    color: Colors.amber,
                  ),
                ),
                Text(
                  correctAnswer,
                  style: const TextStyle(
                    color: Colors.green,
                  ),
                ),
                Text(
                  userAnswer,
                  style: const TextStyle(
                    color: Color(0xFFFF7460),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
