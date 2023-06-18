// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quiz_mobile/class/question.dart';

class QuizPage extends StatefulWidget {

  // ignore: prefer_const_constructors_in_immutables
  QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    final question = ModalRoute.of(context)?.settings.arguments as List<Question>;
    final currentQuestion = question[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizWiz', style: TextStyle(color: Colors.white, fontSize: 24)),
      ),
      body: Column(
        children: [
          // Afficher le contenu de la question actuelle
          const SizedBox(height: 20),
          Text(currentQuestion.question),
          // Afficher le widget de réponse approprié en fonction du type de question
          // if (currentQuestion.type == 'QCM')
          //   QcmQuestionWidget(currentQuestion),
          // if (currentQuestion.type == 'RC')
          //   RcQuestionWidget(currentQuestion),
          // Bouton "Suivant"
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
                // Passer à la question suivante
                if (currentQuestionIndex < question.length - 1) {
                  currentQuestionIndex++;
                }
            },
            child: const Text('Suivant'),
          ),
        ],
      ),
    );
  }
}