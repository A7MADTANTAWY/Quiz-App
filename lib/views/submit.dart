import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/selected_ansers.dart';

class Submit extends StatelessWidget {
  const Submit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'result');
            selected = [];
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff2F8785),
            padding: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadowColor: Colors.black.withOpacity(0.2),
            elevation: 4,
          ),
          child: Center(
            child: Text(
              "اخر كلام",
              textAlign: TextAlign.center, // Ensure text is centered
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
