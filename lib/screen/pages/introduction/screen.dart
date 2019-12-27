import 'package:flutter/material.dart';
import 'package:ipa/screen/widgets/appbar.dart';

class Intro extends StatelessWidget {
  const Intro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, judul: "Introduction to Phonetics"),
    );
  }
}