import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _question = 0;
  var _totalScore = 0;

  static const _questions = [
    {
      "questionText": "What is your favorite color?",
      "answers": [
        {"text": "Red", "score": 10},
        {"text": "Green", "score": 5},
        {"text": "Blue", "score": 6}
      ]
    },
    {
      "questionText": "What is your favorite bird?",
      "answers": [
        {"text": "Peacock", "score": 2},
        {"text": "Pegasus", "score": 7},
        {"text": "Parrot", "score": 1}
      ]
    },
  ];

  void _buttonPressed(int score) {
    _totalScore += score;
    setState(() {
      _question += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _question = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("First App")),
        body: _question < _questions.length
            ? Quiz(_question, _questions, _buttonPressed)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
