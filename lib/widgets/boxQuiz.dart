import 'package:flutter/material.dart';
import 'package:quiz_mobile/class/quiz.dart';
import 'package:quiz_mobile/main.dart';


class BoxQuiz extends StatelessWidget {
  final Quiz quiz;
  
  const BoxQuiz(
    this.quiz, 
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap : (){
            Navigator.of(context).pushNamed(
            PageName.quizpage,
            arguments: quiz.questions,
            );
      },
      child : Container(
        decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 121, 191), // Utiliser la couleur hexadécimale spécifiée
        borderRadius: BorderRadius.circular(10),
        ),            
        width: 300,
        height: 100,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              quiz.title,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              quiz.description,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}