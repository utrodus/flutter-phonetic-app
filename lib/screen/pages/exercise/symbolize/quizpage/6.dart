import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Symbolize6 extends StatefulWidget {
  Symbolize6({Key key}) : super(key: key);

  @override
  _Symbolize6State createState() => _Symbolize6State();
}

class _Symbolize6State extends State<Symbolize6> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Let's Symbolize"),
        body: QuizLayout(
          noQuiz: 5,
          navigation: (){
            Navigator.pushNamed(context, symbolize7);
          },
        )
        // ),
        );
  }
}
