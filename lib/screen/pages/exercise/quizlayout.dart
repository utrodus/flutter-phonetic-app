import 'package:flutter/material.dart';
import 'package:phono/screen/pages/exercise/symbolize/quizkeyboard.dart';

class QuizLayout extends StatelessWidget {
  const QuizLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Stack(
            children: <Widget>[
              
            ],
          ),
        ),
        Container(
          child: Expanded(
              flex: 2,
              child: Stack(
                children: <Widget>[
                  quizKeyboard(context),
                ],
              )),
        )
      ],
    );
  }
}
