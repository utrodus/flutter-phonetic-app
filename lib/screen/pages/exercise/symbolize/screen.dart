import 'package:flutter/material.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Symbolize extends StatelessWidget {
  const Symbolize({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, judul: "Let's Symbolize"),

    );
  }
}