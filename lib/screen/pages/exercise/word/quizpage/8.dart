import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout2.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Word8 extends StatefulWidget {
  Word8({Key key}) : super(key: key);

  @override
  _Word8State createState() => _Word8State();
}

class _Word8State extends State<Word8> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Word Guessing"),
        body: QuizLayout2(
          noQuiz: 7,
          navigation: () {
            Navigator.pushNamed(context, word9);
          },
        )
        // ),
        );
  }
}
