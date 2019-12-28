import 'package:flutter/material.dart';
import 'package:ipa/screen/style/palete.dart';
import 'package:ipa/screen/widgets/appbar.dart';

class Information extends StatelessWidget {
  const Information({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palete.blueGrey,
      appBar: appBar(context, judul: "Information"),
      body: Container(
      ),
    );
  }
}