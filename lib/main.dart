import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
          title: const Text('My first App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white60, // background
                onPrimary: Colors.black, // foreground
              ),
              onPressed: () => answerQuestion(),
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white60,
                onPrimary: Colors.black,
              ),
              onPressed: answerQuestion,
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white60,
                onPrimary: Colors.black,
              ),
              onPressed: answerQuestion,
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
