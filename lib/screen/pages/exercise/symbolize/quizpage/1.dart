import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/quizlayout.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Symbolize1 extends StatefulWidget {
  Symbolize1({Key key}) : super(key: key);

  @override
  _Symbolize1State createState() => _Symbolize1State();
}

class _Symbolize1State extends State<Symbolize1> {
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
          appBar: appBar(context, judul: "Let's Symbolize"),
          body: QuizLayout(
            noQuiz: 0,
            navigation: () {
              Navigator.pushNamed(context, symbolize2);
            },
          )
          // ),
          ),
    );
  }
}
