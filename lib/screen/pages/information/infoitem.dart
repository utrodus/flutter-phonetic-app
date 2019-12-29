import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:ipa/screen/widgets/infoitemlayout.dart';

import '../../../constant/content.dart';
import '../../style/config.dart';

Widget InfoItem(BuildContext context) {
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
        InfoItemLayout(title: "About Apps", content: subBab1),
        InfoItemLayout(title: "What Is Phonetic ?", content: subBab1),
        InfoItemLayout(title: "How To Spell Correctly ?", content: subBab1),
      ],
    ),
  );
}
