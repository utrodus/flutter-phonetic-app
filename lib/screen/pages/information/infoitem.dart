import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:phono/constant/content.dart';
import 'package:phono/screen/widgets/buttonExcercise.dart';
import 'package:phono/screen/widgets/contentcontainer.dart';
import 'package:phono/screen/widgets/infoitemlayout.dart';
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
        InfoItemLayout(
          title: "Let’s Symbolize",
          content: <Widget>[
            Container(
              margin: EdgeInsets.only(
                right:  SizeConfig.vertical * 3,
                left:  SizeConfig.vertical * 3,
              ),
              padding: EdgeInsets.only(
                top: SizeConfig.vertical * 3,
                bottom: SizeConfig.vertical * 3,
              ),
              child: ExcerciseLayout(
                  icon: Icons.category,
                  menuTitle: "Let's Symbolize",
                  paddingTitle: SizeConfig.vertical * 2,
                  width: SizeConfig.horizontal * 2,
                 ),
            ),
            textContentContainer(text: information1)
          ],
        ),
        InfoItemLayout(
          title: "Word Guessing",
          content: <Widget>[
            Container(
              margin: EdgeInsets.only(
                right:  SizeConfig.vertical * 3,
                left:  SizeConfig.vertical * 3,
              ),
              padding: EdgeInsets.only(
                top: SizeConfig.vertical * 3,
                bottom: SizeConfig.vertical * 3,
              ),
              child: ExcerciseLayout(
                  icon: Icons.spellcheck,
                  menuTitle: "Word Guessing",
                  paddingTitle: SizeConfig.vertical * 2,
                  width: SizeConfig.horizontal * 2,
                  ),
            ),
            textContentContainer(text: information2)
          ],
        ),
      ],
    ),
  );
}
