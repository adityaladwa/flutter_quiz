import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            "Total score is $totalScore",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        RaisedButton(
          child: Text("Reset"),
          onPressed: resetHandler,
        )
      ],
    );
  }
}
