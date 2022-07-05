import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 3},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 7},
        {'text': 'White', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 7},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 3},
      ],
    },
    {
      'questionText': 'Where\'s your favorite city?',
      'answers': [
        {'text': 'Seoul', 'score': 10},
        {'text': 'Jakarta', 'score': 7},
        {'text': 'Chicago', 'score': 5},
        {'text': 'Shanghai', 'score': 3},
      ],
    }
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

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
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion)
              : Result(_resetQuiz, _totalScore)),
    );
  }
}
