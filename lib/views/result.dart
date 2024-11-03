import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/Question-data.dart'; // Import your questions data
import 'package:quiz/data/get_summary.dart';
import 'package:quiz/widgets/ansers_result_card.dart';

class Result extends StatelessWidget {
  Result({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F3642),
      body: ListView(
        children: [
          const SizedBox(height: 15),
          // Score display
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
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
              height: 60,
              child: Center(
                child: Text(
                  "1",
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          // Display Answer Result Cards
          ...getSummaryData().map((text) {
            final bool isCorrect =
                text['correct-answer'] == text['user-answer'];
            return AnswersResultCard(
              correctAnswer: text['correct-answer']?.toString() ?? 'N/A',
              question: text['question']?.toString() ?? 'Unknown Question',
              questionIndex: (text['question-index'] as int).toString(),
              userAnswer: text['user-answer']?.toString() ?? 'No Answer',
              isCorrect: isCorrect,
            );
          }).toList(),
          const SizedBox(height: 15),
          // Restart button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                // Add action to restart quiz
                Navigator.pop(context); // Or use a different approach to reset
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                shadowColor: Colors.black.withOpacity(0.2),
                elevation: 4,
              ),
              child: Center(
                child: Text(
                  "Restart the quiz",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
