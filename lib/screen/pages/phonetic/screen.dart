import 'package:flutter/material.dart';
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

class _PhoneticState extends State<Phonetic> {
  

  PageController controller = PageController(initialPage: 0);
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Palete.white,
        appBar: appBar(context, judul: "Phonetic Chart"),
        body: Column(
          children: <Widget>[ContentScreen(), KeyboardScreen()],
        ));
  }
}
