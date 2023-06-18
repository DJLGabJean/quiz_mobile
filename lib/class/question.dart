// ignore_for_file: prefer_is_empty
import 'package:quiz_mobile/class/response.dart';

class Question {
  final int id;
  final String question;
  final String type;
  List<Response> answers;

  Question(
    this.id,
    this.question,
    this.type,
    this.answers,
  ) {
    validateAnswers();
  }

  void validateAnswers() {
    if (type == 'QCM' && answers.length != 4) {
      throw ArgumentError('Le type de question QCM nécessite exactement 4 réponses.');
    } else if (type == 'RC' && (answers.length < 1 || answers.length > 2)) {
      throw ArgumentError('Le type de question RC nécessite entre 1 et 2 réponses.');
    }
  }
}