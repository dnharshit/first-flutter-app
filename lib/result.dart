import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreHandler;

  Result(this.scoreHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
        // child: Text(
        //   'Yeah you Did it, No result for now',
        // ),
        child: Text('Yeah you did it, no result for now'));
  }
}
