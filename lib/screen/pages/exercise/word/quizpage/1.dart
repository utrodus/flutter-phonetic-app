import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout2.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Word1 extends StatefulWidget {
  Word1({Key key}) : super(key: key);

  @override
  _Word1State createState() => _Word1State();
}

class _Word1State extends State<Word1> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return WillPopScope(
      onWillPop: () async {
        await Navigator.pushNamed(context, exerciseRoute);
        return true; // return true if the route to be popped
      },
      child: Scaffold(
          backgroundColor: Palete.bgQuiz,
          appBar: appBar(context, judul: "Word Guessing"),
          body: QuizLayout2(
            noQuiz: 0,
            navigation: () {
              Navigator.pushNamed(context, word2);
            },
          )
          // ),
          ),
    );
  }
}
