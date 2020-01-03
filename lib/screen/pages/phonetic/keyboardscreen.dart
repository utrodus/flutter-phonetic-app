import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:phono/screen/pages/phonetic/keyboard1.dart';
import 'package:phono/screen/pages/phonetic/keyboard2.dart';

import 'package:phono/screen/style/config.dart';

class KeyboardScreen extends StatefulWidget {
  KeyboardScreen({Key key}) : super(key: key);

  @override
  _KeyboardScreenState createState() => _KeyboardScreenState();
}

class _KeyboardScreenState extends State<KeyboardScreen> {
  final AudioCache consonant = AudioCache(prefix: 'audio/consonant/');
  final AudioCache vowel = AudioCache(prefix: 'audio/vowel/');

  bool visible;

  @override
  void initState() {
    super.initState();
    visible = true;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Expanded(
          flex: 2,
          child: Stack(
            children: <Widget>[
              keyBoard1(context, consonant,vowel, visible, () {
                setState(() {
                  visible = false;
                });
              }),
              keyBoard2(context, vowel, !visible, () {
                setState(() {
                  visible = true;
                });
              })
            ],
          )),
    );
  }
}
