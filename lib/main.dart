import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

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
        body: Column(
          children: <Widget>[
            Question(_questions.elementAt(_question)["questionText"]),
            ...(_questions[_question]['answers'] as List<String>)
                .map((e) => Answer(_buttonPressed, e))
                .toList()
          ],
        ),
      ),
    );
  }
}
