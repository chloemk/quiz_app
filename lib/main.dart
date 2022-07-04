import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Where\'s your favorite city?',
      'answers': ['Seoul', 'Jakarta', 'Chicago', 'Shanghai'],
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questionIndex) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: _questionIndex < _questionIndex
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText'] as String),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) => (Answer(_answerQuestion, answer)))
                      .toList(),
                ],
              )
            : const Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
