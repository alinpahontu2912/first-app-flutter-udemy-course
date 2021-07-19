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

  static const _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'White', 'Green'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Rhino', 'Parrot', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite programmin language?',
      'answers': ['C++', 'Java', 'Python', 'Dart'],
    },
    {
      'questionText': 'Who\'s your favorite person?',
      'answers': ['First me', 'Also me', 'Definitely me', 'Simply Me'],
    }
  ];

  @override
  Widget build(BuildContext context) {
    void _doSomething() {
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
            ? Quiz(_questions, _doSomething, _qindex)
            : Result(),
      ),
    );
  }
}
