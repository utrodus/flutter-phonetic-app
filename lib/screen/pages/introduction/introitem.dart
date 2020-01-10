import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phono/constant/content.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/contentcontainer.dart';
import 'package:phono/screen/widgets/introitemlayout.dart';
import 'package:phono/screen/widgets/subitemlayout.dart';

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
        IntroItemLayout(
          title: "Articulatory Phonetic",
          content: [
            imageContentContainer(image2),
            textContentContainer(text: materi1A),
            textContentContainer(
                text: materi1B, margin: SizeConfig.horizontal * 2.5)
          ],
        ),
        IntroItemLayout(
          title: "Consonant Sounds",
          content: <Widget>[
            textContentContainer(text: materi2),
            SubItemLayout(subtitle: "1.	Organ Articulation", subcontent: [
              textContentContainer(text: subConsonantSounds),
              tableContentContainer(tabel1),
            ]),
            SubItemLayout(subtitle: "2.	Place of Articulation", subcontent: [
              textContentContainer(text: subConsonantSounds),
              tableContentContainer(tabel2),
            ]),
            SubItemLayout(subtitle: "3.	Manner of Articulation", subcontent: [
              textContentContainer(text: subConsonantSounds),
              tableContentContainer(tabel3),
              textContentContainer(text: materiConsonantSounds3),
            ]),
          ],
        ),
        IntroItemLayout(
          title: "Vowel Sounds",
          content: [
            tableContentContainer(image1),
            Text(
              "*the close and open are the indication of the tongue rising to the roof of the mouth\n*the front, central, and back is the position of the tongue inside the oral cavity.\n*using the standard of American English\n\n",
              overflow: TextOverflow.clip,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  height: SizeConfig.horizontal * 0.4,
                  fontFamily: Palete.cabinRegular,
                  color: Palete.isiColor,
                  fontStyle: FontStyle.italic,
                  fontSize: SizeConfig.horizontal * 3.5),
            ),
            textContentContainer(text: materi2),
            Text(
              "\nProblem of Language Interference in Indonesia\n",
              overflow: TextOverflow.clip,
              style: TextStyle(
                  height: SizeConfig.horizontal * 0.4,
                  fontFamily: Palete.cabinRegular,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.horizontal * 4),
            ),
            textContentContainer(text: subVowel2),
            SubItemLayout(subtitle: "1.	Consonants", subcontent: [
              SizedBox(height: SizeConfig.vertical * 5),
              tableContentContainer(tabel4),
            ]),
            SubItemLayout(subtitle: "2.	Vowels", subcontent: [
              SizedBox(height: SizeConfig.vertical * 5),
              tableContentContainer(tabel5),
            ]),
          ],
        )
      ],
    ),
  );
}
