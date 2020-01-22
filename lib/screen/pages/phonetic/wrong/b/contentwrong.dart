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
            viewSifat: true,
            visible: wrongState.getWrongContent == 0 ? true : false,
            symbol: simbol,
            img: "assets/img/wrong/g2.png",
            sifat: "Voiced Unaspirated Bilabial Implosive Stop",
            content: Column(
              children: <Widget>[
                penjelasan(context,
                    number: "1. ",
                    text:
                        "Implosively pull in the air through mouth"),
                penjelasan(context,
                    number: "2. ",
                    text: "Obstruct the airflow in the vocal tract"),
                penjelasan(context,
                    number: "3. ", text: "Block the nasal channel"),
                penjelasan(context,
                    number: "4. ", text: "Block the air entirely"),
                penjelasan(context,
                    number: "5. ", text: "Vibrate the vocal cords"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
