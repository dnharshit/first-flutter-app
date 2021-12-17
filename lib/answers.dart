import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() ansHandler;
  final String answerText;

  Answer(this.ansHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(answerText),
        style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey,
        ),
        onPressed: ansHandler,
      ),
    );
  }
}
