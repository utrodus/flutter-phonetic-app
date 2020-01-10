import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phono/constant/content.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';

//TEXT
Widget textContentContainer({String text, double margin}) {
  return Container(
    margin: EdgeInsets.only(
      left: margin ?? 0,
      bottom: SizeConfig.vertical * 2,
    ),
    child: Text(
      text,
      softWrap: true,
      overflow: TextOverflow.clip,
      textAlign: TextAlign.justify,
      style: TextStyle(
          height: SizeConfig.horizontal * 0.4,
          fontFamily: Palete.cabinRegular,
          color: Palete.isiColor,
          fontSize: SizeConfig.horizontal * 3.8),
    ),
  );
}

//IMAGE
Widget imageContentContainer(String image) {
  return Padding(
    padding: EdgeInsets.only(
      top: SizeConfig.vertical * 3,
      bottom: SizeConfig.vertical *3,
    ),
    child: Container(
      height: SizeConfig.vertical * 20,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    ),
  );
}

//TABEL
Widget tableContentContainer(String tabel) {
  return SvgPicture.asset(
    tabel,
    alignment: Alignment.topCenter,
    fit: BoxFit.contain,
    width: SizeConfig.horizontal * 70,
  );
}
