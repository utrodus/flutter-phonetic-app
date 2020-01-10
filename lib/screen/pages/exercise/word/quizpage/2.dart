import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout2.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Word2 extends StatefulWidget {
  Word2({Key key}) : super(key: key);

  @override
  _Word2State createState() => _Word2State();
}

class _Word2State extends State<Word2> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Word Guessing"),
        body: QuizLayout2(
          noQuiz: 1,
          navigation: () {
            Navigator.pushNamed(context, word3);
          },
        )
        // ),
        );
  }
}
