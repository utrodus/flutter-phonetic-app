import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout2.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Word7 extends StatefulWidget {
  Word7({Key key}) : super(key: key);

  @override
  _Word7State createState() => _Word7State();
}

class _Word7State extends State<Word7> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Word Guessing"),
        body: QuizLayout2(
          noQuiz: 6,
          navigation: () {
            Navigator.pushNamed(context, word8);
          },
        )
        // ),

        );
  }
}
