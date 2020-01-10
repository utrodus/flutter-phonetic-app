import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Symbolize7 extends StatefulWidget {
  Symbolize7({Key key}) : super(key: key);

  @override
  _Symbolize7State createState() => _Symbolize7State();
}

class _Symbolize7State extends State<Symbolize7> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Let's Symbolize"),
        body: QuizLayout(
          noQuiz: 6,
          navigation: (){
            Navigator.pushNamed(context, symbolize8);
          },
        )
        // ),
        );
  }
}
