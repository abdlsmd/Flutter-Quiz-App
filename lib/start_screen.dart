import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300, 
          color: const Color.fromARGB(159, 255, 255, 255),
          ),
          SizedBox(height: 30),
          Text(
            'Learn Flutter The Fun Way!',
            style: GoogleFonts.tiltNeon(
                color: Color.fromARGB(255, 235, 235, 223),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt),
            label: Text('Start Quiz!'),
          ),
        ],
      ),
    );
  }
}
