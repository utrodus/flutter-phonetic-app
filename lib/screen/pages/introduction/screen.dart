import 'package:flutter/material.dart';
import 'package:ipa/screen/pages/introduction/introitem.dart';
import 'package:ipa/screen/style/config.dart';
import 'package:ipa/screen/style/palete.dart';
import 'package:ipa/screen/widgets/appbar.dart';

class Intro extends StatelessWidget {
  const Intro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palete.blueGrey,
      appBar: appBar(context, judul: "Introduction to Phonetics"),
      body: Container(
        child: introItem(context)
      ),
    );
  }
}