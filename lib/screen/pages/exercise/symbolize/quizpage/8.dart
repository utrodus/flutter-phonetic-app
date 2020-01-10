import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Symbolize8 extends StatefulWidget {
  Symbolize8({Key key}) : super(key: key);

  @override
  _Symbolize8State createState() => _Symbolize8State();
}

class _Symbolize8State extends State<Symbolize8> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Let's Symbolize"),
        body: QuizLayout(
          noQuiz: 7,
          navigation: (){
            Navigator.pushNamed(context, symbolize9);
          },
        )
        // ),
        );
  }
}
