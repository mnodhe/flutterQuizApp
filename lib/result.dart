import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  VoidCallback HandleReset;
  int _score;
  Result(this.HandleReset, this._score, {Key? key}) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (_score <= 3) {
      resultText = 'You are awesome and innocent!';
    } else if (_score <= 5) {
      resultText = 'Pretty likeable!';
    } else if (_score <= 7) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You are a bad person!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$resultPhrase $_score points',
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: HandleReset,
            child: const Text('Restart'),
          ),
        ],
      ),
    );
  }
}
