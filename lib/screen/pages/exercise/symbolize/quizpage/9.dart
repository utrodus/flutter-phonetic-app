import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Symbolize9 extends StatefulWidget {
  Symbolize9({Key key}) : super(key: key);

  @override
  _Symbolize9State createState() => _Symbolize9State();
}

class _Symbolize9State extends State<Symbolize9> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Let's Symbolize"),
        body: QuizLayout(
          noQuiz: 8,
          navigation: (){
            Navigator.pushNamed(context, symbolize10);
          },
        )
        // ),
        );
  }
}
