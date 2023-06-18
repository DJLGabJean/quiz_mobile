import 'package:flutter/material.dart';
import 'package:quiz_mobile/class/question.dart';

class Quiz {
  final String title;
  final String description;
  List<Question> questions;

  Quiz(
    this.title,
    this.description,
    this.questions,
  ) {
    validateQuestions(questions);
  }

  void validateQuestions(List<Question> questions) {
    if (questions.length < 3) {
      throw ArgumentError('Le quiz doit contenir au moins 3 questions.');
    }
  }
}
