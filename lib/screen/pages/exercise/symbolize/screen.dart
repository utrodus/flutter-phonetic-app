import 'package:flutter/material.dart';
import 'package:phono/screen/pages/state/quiz.dart';
import 'package:phono/screen/widgets/appbar.dart';
import 'package:provider/provider.dart';

class Symbolize extends StatelessWidget {
  const Symbolize({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  List currentShuffle = Provider.of<Quiz>(context).getCurrentShuffle;
    var quiz = Provider.of<Quiz>(context);
    return Scaffold(
      appBar: appBar(context, judul: "Let's Symbolize"),
      body: Column(
       children: <Widget>[
         Text("Score : ${quiz.getCurrentScore}"),
         FlatButton(
           child: Text("Tambah Score"),
           onPressed: (){
             quiz.addScore();
           },
         ),
         FlatButton(
           child: Text("Reset Score"),
           onPressed: (){
             quiz.resetScore();
           },
         ),
       ],
      ),
    );
  }
}