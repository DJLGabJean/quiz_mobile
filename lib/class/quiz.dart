import 'package:flutter/material.dart';
import 'package:quiz_mobile/class/question.dart';

class Quiz {
  final String title;
  final String description;
  List<Question> questions;
  final VoidCallback onTap;
  
  Quiz(
    this.title,
    this.description,
    this.questions,
    this.onTap, 
  ) : assert(questions.length >= 3, 'La liste des questions doit contenir au moins 3 questions.') {
    questions = questions;
  }
}