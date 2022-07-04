import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // VoidCallback is shorthand for void Function()
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue, // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
