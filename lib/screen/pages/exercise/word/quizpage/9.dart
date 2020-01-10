import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout2.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Word9 extends StatefulWidget {
  Word9({Key key}) : super(key: key);

  @override
  _Word9State createState() => _Word9State();
}

class _Word9State extends State<Word9> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Word Guessing"),
        body: QuizLayout2(
          noQuiz: 8,
          navigation: () {
            Navigator.pushNamed(context, word10);
          },
        )
        // ),
        );
  }
}
