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
  static const _questions = [
    {
      "questionText": "What is your favorite color?",
      "answers": ["Red", "Green", "Blue"]
    },
    {
      "questionText": "What is your favorite bird?",
      "answers": ["Peacock", "Pegasus", "Pegasus"]
    },
  ];
  void _buttonPressed() {
    setState(() {
      _question += 1;
    });
    print("Button pressed");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("First App")),
        body: _question < _questions.length
            ? Quiz(_question, _questions, _buttonPressed)
            : Result(),
      ),
    );
  }
}
