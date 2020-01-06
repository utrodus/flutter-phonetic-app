import 'package:flutter/material.dart';
import 'package:phono/screen/widgets/appbar.dart';

class WordGuess extends StatelessWidget {
  const WordGuess({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, judul: "Word Guessing"),

    );
  }
}