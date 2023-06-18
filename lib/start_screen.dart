import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(255, 201, 180, 238),
            ),
            const SizedBox(height: 50),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 201, 180, 238),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 10),
                OutlinedButton.icon(
                  onPressed: () {
                    startQuiz();
                  },
                  style:
                      OutlinedButton.styleFrom(foregroundColor: Colors.white),
                  icon: const Icon(Icons.arrow_right_alt),
                  label: const Text('Start Quiz'),
                ),
                const SizedBox(width: 10),
              ],
            )
          ],
        ),
      ),
    );
  }
}
