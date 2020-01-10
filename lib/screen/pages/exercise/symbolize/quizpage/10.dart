import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/function/shuffle.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout.dart';
import 'package:phono/screen/pages/exercise/symbolize/soal_jawaban.dart';
import 'package:phono/screen/pages/state/quiz.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';
import 'package:phono/router/router.dart';
import 'package:provider/provider.dart';

class Symbolize10 extends StatefulWidget {
  Symbolize10({Key key}) : super(key: key);

  @override
  _Symbolize10State createState() => _Symbolize10State();
}

class _Symbolize10State extends State<Symbolize10> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var quiz = Provider.of<Quiz>(context);
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Let's Symbolize"),
        body: QuizLayout(
          noQuiz: 9,
          navigation: () {
            // Navigator.pushNamed(context, );
            Navigator.pushNamed(context, gameover,
                arguments: GameOverArgument(
                    title: "Let's Symbolize",
                    ontap: () {
                      quiz.resetScore();
                      List hasilshuffle = Shuflle(soalSymbol);
                      quiz.setShuffle(hasilshuffle);
                      Navigator.pushNamed(context, symbolize1);
                    }));
          },
        )
        // ),
        );
  }
}
