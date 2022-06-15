import 'package:flutter/cupertino.dart';
import 'package:myflutterapp/answer.dart';
import 'package:myflutterapp/main.dart';
import 'package:myflutterapp/questions.dart';

class Quiz extends StatelessWidget {
  final List<QuestionCreator> questions;
  final int questionIndex;
  final Function answerQuestion;
  const Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Question(questions[questionIndex].Question),
          ...questions[questionIndex].Answers.map((answer) {
            return Answer(answer.Answer, () => answerQuestion(answer.Score));
          }).toList(),
        ],
      ),
    );
  }
}
