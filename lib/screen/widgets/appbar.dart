import 'package:flutter/material.dart';
import 'package:ipa/screen/style/config.dart';
import 'package:ipa/screen/style/palete.dart';

PreferredSizeWidget appBar (BuildContext context, {String judul}){
  SizeConfig().init(context);
    return AppBar(
      centerTitle: true,
      backgroundColor: Palete.bgAppbar,
      title: Text(
        judul,
        style: TextStyle(
          color:Palete.white,
          fontFamily: Palete.cabinRegular,
          letterSpacing: 1,
          fontSize: SizeConfig.horizontal * 4.8
        ),
      ),
    );
}