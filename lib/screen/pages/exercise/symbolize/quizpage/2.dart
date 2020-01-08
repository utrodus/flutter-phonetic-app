import 'package:flutter/material.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Symbolize2 extends StatefulWidget {
  Symbolize2({Key key}) : super(key: key);

  @override
  _Symbolize2State createState() => _Symbolize2State();
}

class _Symbolize2State extends State<Symbolize2> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Let's Symbolize"),
        body: QuizLayout(
          noQuiz: 1,
        )
        // ),
        );
  }
}
