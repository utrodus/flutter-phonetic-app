import 'package:flutter/material.dart';
import 'package:ipa/screen/style/palete.dart';
import 'package:ipa/screen/widgets/appbar.dart';

class Exercise extends StatelessWidget {
  const Exercise({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palete.blueGrey,
      appBar: appBar(context, judul: "Exercise"),
      body: Container(
      ),
    );
  }
}