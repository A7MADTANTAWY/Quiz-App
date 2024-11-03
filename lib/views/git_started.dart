import 'package:flutter/material.dart';

class GitStarted extends StatelessWidget {
  const GitStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Padding around the button
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 200, child: Image.asset("assets/quiz.png")),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'quiz');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF7460), // Warm orange color
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 32), // Larger padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                  elevation: 6, // Elevation for a modern button effect
                ),
                child: const Text(
                  "Start The Quiz",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor:
          const Color(0xFF2F3642), // Same dark background for the body
    );
  }
}
