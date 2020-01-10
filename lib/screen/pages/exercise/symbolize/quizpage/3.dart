import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Symbolize3 extends StatefulWidget {
  Symbolize3({Key key}) : super(key: key);

  @override
  _Symbolize3State createState() => _Symbolize3State();
}

class _Symbolize3State extends State<Symbolize3> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Let's Symbolize"),
        body: QuizLayout(
          noQuiz: 2,
          navigation: (){
            Navigator.pushNamed(context, symbolize4);
          },
        )
        // ),
        );
  }
}
