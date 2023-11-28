import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          /* const Text(
            "Learn Flutter the Fun Way.. ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),*/
          const TypeWriterText(
            text: Text(
              'Learn Flutter the Fun Way.. ',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            duration: Duration(milliseconds: 100),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),
          const SizedBox(
            height: 100,
          ),
          const Text(
            "developed by...",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const Text(
            "omer",
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }
}
