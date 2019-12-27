import 'package:flutter/material.dart';
import 'package:ipa/screen/style/palete.dart';

PreferredSizeWidget appBar (BuildContext context, {String judul}){
    return AppBar(
      centerTitle: true,
      backgroundColor: Palete.blue,
      title: Text(
        judul,
        style: TextStyle(
          color:Palete.white,

        ),
      ),
    );
}