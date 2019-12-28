import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:ipa/constant/content.dart';
import 'package:ipa/screen/style/config.dart';
import 'package:ipa/screen/widgets/introitemlayout.dart';

Widget introItem(BuildContext context) {
  SizeConfig().init(context);
  return ExpandableTheme(
    data: ExpandableThemeData(iconColor: Colors.blue, useInkWell: false),
    child: ListView(
      padding: EdgeInsets.only(
        top: SizeConfig.vertical * 2,
        bottom: SizeConfig.vertical * 3,
        left: SizeConfig.horizontal * 5,
        right: SizeConfig.horizontal * 5,
      ),
      children: <Widget>[
        IntroItemLayout(title: "Sub Bab 1", content: subBab1,),
        IntroItemLayout(title: "Sub Bab 2", content: subBab1,),
        IntroItemLayout(title: "Sub Bab 3", content: subBab1,),
        IntroItemLayout(title: "Sub Bab 4", content: subBab1,),
        IntroItemLayout(title: "Sub Bab 5", content: subBab1,),
        IntroItemLayout(title: "Sub Bab 6", content: subBab1,),
      ],
    ),
  );
}


