// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quiz_mobile/widgets/boxQuiz.dart';
import 'package:quiz_mobile/widgets/elementColumn.dart';
import '../controller/quizList.dart';

class MainPage extends StatelessWidget {
  final DecorationImage fondEcran;

  const MainPage({required this.fondEcran, super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizWiz', style: TextStyle(color: Colors.white, fontSize: 24)),
        backgroundColor: const Color.fromARGB(206, 237, 66, 100),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: fondEcran,
        ),
        child: ElementColumn(
          widgets: [
            BoxQuiz(minecraftQuiz),
            const SizedBox(height: 20),
            BoxQuiz(sonicQuiz),
          ],
        ),
      ),
    );
  }
}