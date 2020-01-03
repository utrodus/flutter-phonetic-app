import 'package:flutter/material.dart';
import 'package:phono/screen/pages/introduction/introitem.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

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