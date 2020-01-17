import 'package:flutter/material.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';
import 'package:phono/screen/pages/phonetic/contentscreen.dart';
import 'package:phono/screen/pages/phonetic/keyboardscreen.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Phonetic extends StatefulWidget {
  const Phonetic({Key key}) : super(key: key);

  @override
  _PhoneticState createState() => _PhoneticState();
}

class _PhoneticState extends State<Phonetic> with TickerProviderStateMixin {
  GifController controller;

  @override
  void initState() {
    controller = GifController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Palete.white,
        appBar: appBar(context, judul: "Phonetic Chart"),
        body: Column(
          children: <Widget>[
            ContentScreen(
              controller: controller,
            ),
            KeyboardScreen(
              controller: controller,
            )
          ],
        ));
  }
}
