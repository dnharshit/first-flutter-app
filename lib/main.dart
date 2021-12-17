import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final ques = const [
    {
      'questionText': 'What is your Favourite Colour?',
      'answers': ['Black', 'Blue', 'Green', 'Yellow'],
    },
    {
      'questionText': 'What is your Fav animal?',
      'answers': ['Dog', 'Cat', 'Horse', 'Lion']
    },
    {
      'questionText': 'What you do in your Free Time ?',
      'answers': ['Eat', 'Sleep', 'Code', 'Repeat?']
    },
  ];

  var _quesidx = 0;
  Widget build(BuildContext context) {
    void ansQuestion() {
      setState(() {
        _quesidx = _quesidx + 1;
      });
      if (_quesidx < ques.length) {
        print('We have more questions');
      }
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _quesidx < ques.length
            ? Column(
                children: [
                  Question(
                    (ques[_quesidx]['questionText'] as String),
                  ),
                  ...(ques[_quesidx]['answers'] as List<String>).map((answer) {
                    return Answer(ansQuestion, answer);
                  }).toList()
                ],
              )
            : Result(16),
      ),
    );
  }
}
