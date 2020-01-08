import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:phono/screen/pages/exercise/quizlayout.dart';
import 'package:phono/screen/pages/state/quiz.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';
import 'package:phono/screen/widgets/quizkeyboard.dart';
import 'package:provider/provider.dart';

class Symbolize extends StatefulWidget {
  Symbolize({Key key}) : super(key: key);

  @override
  _SymbolizeState createState() => _SymbolizeState();
}

class _SymbolizeState extends State<Symbolize> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    return Scaffold(
        backgroundColor: Palete.bgQuiz,
        appBar: appBar(context, judul: "Let's Symbolize"),
        body: QuizLayout(noQuiz: 0,)
        // ),
        );
  }
}
