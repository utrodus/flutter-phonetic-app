import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ipa/screen/pages/mainmenu/screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return MaterialApp(
      title: 'International Phonetic Alphabet',
      debugShowCheckedModeBanner: false,
      home: MainMenu(),
    );
  }
}
