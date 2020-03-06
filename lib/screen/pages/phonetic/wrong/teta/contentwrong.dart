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
            scdImg: true,
            imgSize: SizeConfig.horizontal * 26,
            imgMargin: SizeConfig.horizontal * 5,
            img: "assets/img/wrong/t.png",
            img2: "assets/img/wrong/h.png",
            content: Padding(
              padding: EdgeInsets.only(top: SizeConfig.vertical * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: SizeConfig.horizontal * 5),
                  Text(
                    "t",
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
            ),
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
                    text:
                        "Block entirely the airflow using the tip of the tongue"),
                penjelasan(context,
                    number: "3. ",
                    text: "Suddenly release the air through the mouth"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
