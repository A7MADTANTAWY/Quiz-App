import 'package:flutter/material.dart';
import 'package:quiz/data/Question-data.dart';
import 'package:quiz/data/selected_ansers.dart';
import 'package:quiz/widgets/Next_buttom.dart';
import 'package:quiz/widgets/anser_card.dart';
import 'package:quiz/widgets/prev_buttom.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var currentIndex = 0;
  late List<String> selectedAnswers; // تعريف القائمة هنا

  @override
  void initState() {
    super.initState();
    // تهيئة selectedAnswers لتحتوي على عناصر فارغة بحجم عدد الأسئلة
    selectedAnswers = List.filled(questions.length, "");
  }

  void answerQuestion(String answer) {
    setState(() {
      selectedAnswers[currentIndex] = answer; // Set the selected answer
      if (currentIndex == questions.length - 1) {
        // Pass the selected answers to the Result screen
        Navigator.pushNamed(
          context,
          'result',
          arguments: selectedAnswers,
        );
      } else {
        currentIndex += 1; // Move to the next question
      }
    });
  }

  void pre() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex -= 1;
      });
    }
  }

  void next() {
    if (currentIndex < questions.length - 1) {
      setState(() {
        currentIndex += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentIndex];

    return Scaffold(
      backgroundColor: const Color(0xFF2F3642), // Dark gray background
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color:
                        const Color(0xFFFF7460), // Warm orange for question box
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text(
                      "Q${currentIndex + 1}",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Text(
                currentQuestion.text,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Spacer(flex: 2),

          // Display Answer Cards using the pre-shuffled list
          ...currentQuestion.GetShuffledList().map((answer) {
            bool isSelected = selectedAnswers[currentIndex] == answer;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: AnswerCard(
                answerText: answer,
                color: isSelected ? Colors.green : const Color(0xff2F8785),
                onPressed: () {
                  answerQuestion(answer);
                },
              ),
            );
          }).toList(),

          const Spacer(flex: 3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                PrevBottom(
                  pre: pre,
                ),
                NextButton(
                  next: next,
                ),
              ],
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
