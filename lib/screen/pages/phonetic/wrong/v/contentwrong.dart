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
      flex: wrongState.getFlexContent ?? 1,
      child: Stack(
        children: <Widget>[
          ContentLayoutWrong(
            visible: wrongState.getWrongContent == 0 ? true : false,
            symbol: "f",
            sifat: "PATRA PENGEMBALA",
            img: "assets/img/ae.png",
            content: Column(
              children: <Widget>[
                penjelasan(context,
                    number: "1. ",
                    text:
                        "Approach the velar by the back of the tongue. No touching"),
                penjelasan(context,
                    number: "2. ",
                    text: "Constrict the airflow through the narrow channel"),
                penjelasan(context,
                    number: "3. ", text: "Flow the air through the mouth"),
                penjelasan(context,
                    number: "4. ", text: "Vibrate the vocal cords"),
              ],
            ),
          ),
          ContentLayoutWrong(
            visible: wrongState.getWrongContent == 1 ? true : false,
            symbol: "f",
            sifat: "Voiceless Bilabial Stop",
            img: "assets/img/ae.png",
          ),
        ],
      ),
    );
  }
}
