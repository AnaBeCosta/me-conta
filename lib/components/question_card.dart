import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final String pergunta;

  const QuestionCard({super.key, required this.pergunta});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text(
          pergunta,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
