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
  var _questions = [
    "What is your favorite color?",
    "What is your favorite fruit?"
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
            Question(_questions.elementAt(_question)),
            Answer(_buttonPressed, "Answer 1"),
            Answer(_buttonPressed, "Answer 2"),
            Answer(_buttonPressed, "Answer 3"),
          ],
        ),
      ),
    );
  }
}
