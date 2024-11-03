import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerCard extends StatelessWidget {
  final String answerText;
  final VoidCallback onPressed;
  final Color color;

  const AnswerCard({
    super.key,
    required this.answerText,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Make button take full width of its parent
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadowColor: Colors.black.withOpacity(0.2),
          elevation: 4,
        ),
        child: Center(
          child: Text(
            answerText,
            textAlign: TextAlign.center, // Ensure text is centered
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
