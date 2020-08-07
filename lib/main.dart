import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _i = 0;

  void changei() {
    setState(() {
      _i++;
    });
  }

  void _answerQuestion() {
    changei();
  }

  @override
  Widget build(BuildContext context) {
//    var questions = [
//      'What\'s your favorie color ?',
//      'What\'s your favorte animal'
//    ];

  //a

    var questions = [
      {
        'questionText': 'What\'s your favorie color ?',
        'children': ['a', 'b', 'c']
      },
      {
        'questionText': 'What\'s your favorte animal',
        'children': ['e', 'f', 'g']
      },
      {
        'questionText': 'What\'s your favorte animal',
        'children': ['i', 'j', 'k']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First app'),
        ),
        body: Column(
          children: [
            Question(questions[_i]['questionText']),
            ...(questions[_i]['children'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
