import 'package:buthcering/quiz.dart';
import 'package:buthcering/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qindex = 0;
  var _score = 0;

  static const _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 4},
        {'text': 'White', 'score': 2},
        {'text': 'Green', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Rhino', 'score': 8},
        {'text': 'Parrot', 'score': 2},
        {'text': 'Lion', 'score': 6}
      ],
    },
    {
      'questionText': 'What\'s your favorite programming language?',
      'answers': [
        {'text': 'C++', 'score': 10},
        {'text': 'Java', 'score': 10},
        {'text': 'Python', 'score': 4},
        {'text': 'Prologue', 'score': 1}
      ],
    },
    {
      'questionText': 'Who\'s your favorite person?',
      'answers': [
        {'text': 'First me', 'score': 10},
        {'text': 'Also me', 'score': 10},
        {'text': 'Definitely me', 'score': 10},
        {'text': 'Simply me', 'score': 10}
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion(int score) {
      _score += score;
      setState(() {
        _qindex++;
        print("Something happens");
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My First App'),
        ),
        body: _qindex < _questions.length
            ? Quiz(_questions, _answerQuestion, _qindex)
            : Result(),
      ),
    );
  }
}
