import 'package:flutter/material.dart';
import 'package:phono/screen/pages/state/symbol.dart';
import 'package:phono/screen/style/config.dart';
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
            sifat: "Voiceless Labiodental Fricative",
            img: "assets/img/wrong/s.png",
          ),
          ContentLayoutWrong(
            visible: wrongState.getWrongContent == 1 ? true : false,
            symbol: simbol,
            sifat: "Voiceless Bilabial Stop",
            img: "assets/img/wrong/s.png",
            scdImg: true,
            imgSize: SizeConfig.horizontal * 26,
            imgMargin: SizeConfig.horizontal * 5,
            img2: "assets/img/wrong/h.png",
            content: Padding(padding: EdgeInsets.only(top: SizeConfig.vertical * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: SizeConfig.horizontal * 5),
                Text(
                  "s",
                  style: TextStyle(fontSize: 25),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.horizontal * 15,
                    right: SizeConfig.horizontal * 15,
                  ),
                  child: Text(
                    " + ",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Text(
                  "h",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            )
          ),
        ],
      ),
    );
  }
}
