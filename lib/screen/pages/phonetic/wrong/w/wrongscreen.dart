import 'package:flutter/material.dart';
import 'package:phono/screen/pages/phonetic/wrong/w/contentwrong.dart';
import 'package:phono/screen/pages/phonetic/wrong/w/keyboardwrong.dart';

import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Wrongw extends StatelessWidget {
  final String simbol;

  Wrongw({
    Key key,
    this.simbol,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: appBar(context, judul: "Mispronounciation"),
      body: Container(
          padding: EdgeInsets.only(
            top: SizeConfig.vertical * 2,
            left: SizeConfig.horizontal * 3,
            right: SizeConfig.horizontal * 3,
          ),
          child: Column(
            children: <Widget>[ContentWrong(simbol: simbol,), KeyboardWrong()],
          )),
    );
  }
}
