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
            viewImg: true,
            viewSifat: true,
            sifat: "Voiced Bilabial Fricative",
            img: "assets/img/wrong/bs.png",
            content: Column(
              children: <Widget>[
                penjelasan(context,
                    number: "1. ",
                    text: "Move the two lips close enough, no blocking"),
                penjelasan(context,
                    number: "2. ",
                    text:
                        "Constrict the airflow through the narrow channel to make a friction"),
                penjelasan(context,
                    number: "3. ", text: "Vibrate the vocal cords"),
              ],
            ),
          ),
          ContentLayoutWrong(
            viewImg: false,
            viewSifat: false,
            visible: wrongState.getWrongContent == 1 ? true : false,
            symbol: simbol,
            sifat: "Voiceless Bilabial Stop",
            img: "assets/img/missp/f.png",
          ),
        ],
      ),
    );
  }
}
