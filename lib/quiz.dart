import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int question;
  final List<Map<String, Object>> questions;
  final Function answerHandler;

  Quiz(this.question, this.questions, this.answerHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions.elementAt(question)["questionText"]),
        ...(questions[question]['answers'] as List<String>)
            .map((e) => Answer(answerHandler, e))
            .toList()
      ],
    );
  }
}
