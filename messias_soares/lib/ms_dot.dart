import 'package:flutter/material.dart';

class MsDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text (
          "MS",
          textScaleFactor: 2,
          style: TextStyle (
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox (
          width: 5
        ),
        AnimatedContainer (
          duration: Duration (
            seconds: 1
          ),
          height: 8,
          width: 8,
          decoration: BoxDecoration (
            shape: BoxShape.circle,
            color: Colors.purple
          ),
        )
      ]
    );
  }
}