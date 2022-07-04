import 'package:flutter/material.dart';

import 'question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s your favourite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white60, // background
                onPrimary: Colors.black, // foreground
              ),
              onPressed: () => _answerQuestion(),
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white60,
                onPrimary: Colors.black,
              ),
              onPressed: _answerQuestion,
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white60,
                onPrimary: Colors.black,
              ),
              onPressed: _answerQuestion,
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
