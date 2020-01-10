import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Symbolize5 extends StatefulWidget {
  Symbolize5({Key key}) : super(key: key);

  @override
  _Symbolize5State createState() => _Symbolize5State();
}

class _Symbolize5State extends State<Symbolize5> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Let's Symbolize"),
        body: QuizLayout(
          noQuiz: 4,
          navigation: (){
            Navigator.pushNamed(context, symbolize6);
          },
        )
        // ),
        );
  }
}
