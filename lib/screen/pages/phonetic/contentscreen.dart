import 'package:flutter/material.dart';
import 'package:phono/screen/pages/state/symbol.dart';
import 'package:phono/screen/widgets/contentlayout.dart';
import 'package:provider/provider.dart';

class ContentScreen extends StatelessWidget {
  ContentScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentSymbol = Provider.of<Simbol>(context).getCurrentSymbol;
    return Expanded(
        flex: 3,
        child: Stack(
          children: <Widget>[
            ContentLayout(
              visible: currentSymbol == 0 ? true : false,
              symbol: "b",
              gif: "assets/gif/b.gif",
              audio: "b.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 1 ? true : false,
              symbol: "d",
              gif: "assets/gif/d.gif",
              audio: "d.mp3",
            ),
          ],
        ));
  }
}
