import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answer;
  final String answerText;

  Answer(this.answer, this.answerText);

  @override
  Widget build(BuildContext context) {

    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
        child: Text(answerText),
          onPressed: answer,
        ));
  }
}
