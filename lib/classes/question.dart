// ignore_for_file: prefer_is_empty

class Question {
  final int id;
  final String question;
  final String type;
  List<String> answers;
  
  Question(
    this.id,
    this.question,
    this.type,
    this.answers,
  )  : assert(answers.length >= 1, 'La question doit avoir au moins une réponse.'),
      assert(type == 'QCM' && answers.length == 4 || type == 'RC' && answers.length >= 1 && answers.length <= 2,
            'Le nombre de réponses ne correspond pas au type de question.') {
              answers = answers;
              }
}