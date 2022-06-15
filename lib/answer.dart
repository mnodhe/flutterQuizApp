import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback answerFunc;
  const Answer(this.answerText, this.answerFunc);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => answerFunc(),
        child: Text(answerText),
      ),
    );
  }
}
