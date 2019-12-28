import 'package:flutter/material.dart';
import 'package:ipa/screen/style/palete.dart';
import 'package:ipa/screen/widgets/appbar.dart';

class Phonetic extends StatelessWidget {
  const Phonetic({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palete.blueGrey,
      appBar: appBar(context, judul: "Phonetic Chart"),
      body: Container(
      ),
    );
  }
}