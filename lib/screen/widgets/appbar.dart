import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';

PreferredSizeWidget appBar (BuildContext context, {String judul, double elevation}){
  SizeConfig().init(context);
    return AppBar(
      centerTitle: true,
      elevation: elevation ?? 4,
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