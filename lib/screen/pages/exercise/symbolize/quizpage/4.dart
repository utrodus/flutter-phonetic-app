import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Symbolize4 extends StatefulWidget {
  Symbolize4({Key key}) : super(key: key);

  @override
  _Symbolize4State createState() => _Symbolize4State();
}

class _Symbolize4State extends State<Symbolize4> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Let's Symbolize"),
        body: QuizLayout(
          noQuiz: 3,
          navigation: (){
            Navigator.pushNamed(context, symbolize5);
          },
        )
        // ),
        );
  }
}
