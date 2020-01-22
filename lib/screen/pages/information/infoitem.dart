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
          title: "Mispronounciation",
          content: <Widget>[
            Center(
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(15.0),
                child: Image.asset(
                  "assets/img/wrong.jpg",
                  width: SizeConfig.horizontal * 12,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.vertical * 3,
            ),
            textContentContainer(
                text:
                    "This menu contains the potential mispronunciation of each sound faced by the pronouncer of Indonesia, determined by some researches of the interference of first language in Indonesia.")
          ],
        ),
        InfoItemLayout(
          title: "Tongue Twister",
          content: <Widget>[
            Center(
              child: Image.asset(
                "assets/img/tongue.png",
                width: SizeConfig.horizontal * 12,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: SizeConfig.vertical * 3,
            ),
            textContentContainer(
                text:
                    "This menu contains a Tongue Twister, a phrase or sentence designed to be difficultly articulate rely on rapid alternation between similar phonemes. This Tongue Twister is designed to train the mastery of each phoneme")
          ],
        ),
        InfoItemLayout(
          title: "Let’s Symbolize",
          content: <Widget>[
            Container(
              margin: EdgeInsets.only(
                right: SizeConfig.vertical * 3,
                left: SizeConfig.vertical * 3,
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
                right: SizeConfig.vertical * 3,
                left: SizeConfig.vertical * 3,
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
