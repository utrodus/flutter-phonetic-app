import 'package:flutter/material.dart';
import 'package:phono/screen/pages/state/symbol.dart';
import 'package:phono/screen/widgets/contentlayout.dart';
import 'package:phono/screen/widgets/contentlayoutwrong.dart';
import 'package:provider/provider.dart';

class ContentWrong extends StatelessWidget {
  final String simbol;
  ContentWrong({
    Key key,
    this.simbol,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var wrongState = Provider.of<Simbol>(context);

    return Expanded(
      flex: 2,
      child: Stack(
        children: <Widget>[
          ContentLayoutWrong(
            visible: wrongState.getWrongContent == 0 ? true : false,
            symbol: simbol,
            img: "assets/img/wrong/t.png",
          ),
          ContentLayoutWrong(
            visible: wrongState.getWrongContent == 1 ? true : false,
            symbol: simbol,
            img: "assets/img/wrong/s.png",
          ),
          ContentLayoutWrong(
            visible: wrongState.getWrongContent == 2 ? true : false,
            symbol: simbol,
            img: "assets/img/wrong/t.png",
          ),
          ContentLayoutWrong(
            visible: wrongState.getWrongContent == 3 ? true : false,
            symbol: simbol,
            sifat: "Voiceless Labiodental Fricative",
            img: "assets/img/wrong/obuntut.png",
          ),
          ContentLayoutWrong(
            viewSifat: true,
            visible: wrongState.getWrongContent == 4 ? true : false,
            symbol: simbol,
            sifat: "Apico-Dental Plosive",
            img: "assets/img/wrong/t2.png",
            content: Column(
              children: <Widget>[
                penjelasan(context,
                    number: "1. ",
                    text: "Put the tip of the tongue at the upper teeth"),
                penjelasan(context,
                    number: "2. ",
                    text: "Block entirely the airflow using the tip of the tongue"),
                penjelasan(context,
                    number: "3. ", text: "Suddenly release the air through the mouth"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
