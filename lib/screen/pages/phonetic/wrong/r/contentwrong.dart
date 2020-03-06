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
            viewSifat: true,
            img: "assets/img/wrong/r.png",
            sifat: "Apical Alveolar Trill",
            content: Column(
              children: <Widget>[
                penjelasan(context,
                    number: "1. ",
                    text:
                        "Slightly round the lips."),
                penjelasan(context,
                    number: "2. ",
                    text: "Put the tip of the tongue at the alveolar ridge."),
                penjelasan(context,
                    number: "3. ", text: "Curl back the tongue."),
                penjelasan(context,
                    number: "4. ", text: "Vibrate/trill the tongue while pushing the air"),
                penjelasan(context,
                    number: "5. ", text: "Vibrate the vocal cords."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
