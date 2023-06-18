// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quiz_mobile/class/question.dart';
import 'package:quiz_mobile/widgets/elementColumn.dart';

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
          // Afficher le widget de réponse approprié en fonction du type de question
          if (currentQuestion.type == 'QCM')
            ElementColumn(widgets: [ Text(currentQuestion.question), 
                                     for (var i = 0; i < currentQuestion.answers.length; i++) 
                                      ElevatedButton(onPressed: () {
                                        // Si la réponse est correcte, afficher un message de confirmation
                                        if (currentQuestion.answers[i].isCorrect == true) {
                                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Bonne réponse!')));
                                        }
                                        // Sinon, afficher un message d'erreur
                                        else {
                                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Mauvaise réponse!')));
                                        }
                                      }, child: Text(currentQuestion.answers[i].response))]),
          if (currentQuestion.type == 'RC')
            ElementColumn(widgets: [Text(currentQuestion.question), for (var i = 0; i < currentQuestion.answers.length; i++) ElevatedButton(onPressed: () {}, child: Text(currentQuestion.answers[i].response))]),
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