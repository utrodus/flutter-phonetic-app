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
            sifat: "Voiceless Labiodental Fricative",
            img: "assets/img/wrong/i.png",
          ),
          
        ],
      ),
    );
  }
}
