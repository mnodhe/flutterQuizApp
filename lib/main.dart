import 'package:flutter/material.dart';
import 'package:myflutterapp/quiz.dart';
import 'package:myflutterapp/result.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var _questionIndex = 0;
  int _score = 0;
  var questions = [
    QuestionCreator(
      "What's your favorite color?",
      [
        QuestionAnswersCreator("red", 1),
        QuestionAnswersCreator("blue", 2),
        QuestionAnswersCreator("green", 3),
        QuestionAnswersCreator("yellow", 4)
      ],
    ),
    QuestionCreator(
      "What's your favorite animal?",
      [
        QuestionAnswersCreator("cat", 1),
        QuestionAnswersCreator("dog", 2),
        QuestionAnswersCreator("bird", 3),
        QuestionAnswersCreator("fish", 4)
      ],
    ),
    QuestionCreator(
      "What's your favorite food?",
      [
        QuestionAnswersCreator("pizza", 1),
        QuestionAnswersCreator("burger", 2),
        QuestionAnswersCreator("pasta", 3),
        QuestionAnswersCreator("sushi", 4),
      ],
    ),
    QuestionCreator(
      "What's your favorite mentor?",
      [
        QuestionAnswersCreator("John", 1),
        QuestionAnswersCreator("Mary", 2),
        QuestionAnswersCreator("Peter", 3),
        QuestionAnswersCreator("Sara", 4),
      ],
    ),
  ];
  void _answerQuestion(int score) {
    print('Answer chosen!');
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
        _score = _score + score;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'asdasdsa',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hi"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(() {
                setState(() {
                  _questionIndex = 0;
                  _score = 0;
                });
              }, _score),
      ),
    );
  }
}

class QuestionCreator {
  String Question;
  List<QuestionAnswersCreator> Answers;

  QuestionCreator(this.Question, this.Answers);
}

class QuestionAnswersCreator {
  String Answer;
  int Score;
  QuestionAnswersCreator(this.Answer, this.Score);
}
