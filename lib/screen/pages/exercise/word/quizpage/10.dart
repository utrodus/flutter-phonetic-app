import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/function/shuffle.dart';
import 'package:phono/router/router.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout2.dart';
import 'package:phono/screen/pages/exercise/word/soal_jawaban.dart';
import 'package:phono/screen/pages/state/quiz.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';
import 'package:provider/provider.dart';

class Word10 extends StatefulWidget {
  Word10({Key key}) : super(key: key);

  @override
  _Word10State createState() => _Word10State();
}

class _Word10State extends State<Word10> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var quiz = Provider.of<Quiz>(context);
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Word Guessing"),
        body: QuizLayout2(
          noQuiz: 9,
          navigation: () {
            Navigator.pushNamed(context, gameover,
                arguments: GameOverArgument(
                    title: "Word Guessing",
                    ontap: () {
                      quiz.resetScore();
                      List hasilshuffle = Shuflle(soalWord);
                      quiz.setShuffle(hasilshuffle);
                      Navigator.pushNamed(context, word1);
                    }));
          },
        )
        // ),
        );
  }
}
