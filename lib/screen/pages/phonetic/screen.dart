import 'package:flutter/material.dart';
import 'package:ipa/screen/pages/phonetic/contentscreen.dart';
import 'package:ipa/screen/pages/phonetic/keyboardscreen.dart';
import 'package:ipa/screen/style/config.dart';
import 'package:ipa/screen/style/palete.dart';
import 'package:ipa/screen/widgets/appbar.dart';


class Phonetic extends StatefulWidget {
  const Phonetic({Key key}) : super(key: key);

  @override
  _PhoneticState createState() => _PhoneticState();
}

class _PhoneticState extends State<Phonetic> {
  String symbol;

  @override
  void initState() {
    super.initState();
    symbol = "b";
  }

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
