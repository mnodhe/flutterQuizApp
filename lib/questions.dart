import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
