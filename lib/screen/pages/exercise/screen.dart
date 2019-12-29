import 'package:flutter/material.dart';
import 'package:ipa/screen/style/palete.dart';
import 'package:ipa/screen/widgets/appbar.dart';
import 'package:ipa/screen/widgets/buttonExcercise.dart';
import '../../style/config.dart';
import '../../style/palete.dart';


class Exercise extends StatelessWidget {
  const Exercise({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palete.white,
      appBar: appBar(context, judul: "Exercise"),
      body: Container(
        margin: EdgeInsets.all(SizeConfig.horizontal * 4),
        decoration: BoxDecoration(
          color: Palete.bgGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.vertical * 5,
            ),
            Container(
              height: SizeConfig.vertical * 13,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Palete.lightBlue,
                  image: DecorationImage(
                      image: AssetImage(Palete.homework), fit: BoxFit.contain)),
            ),
            SizedBox(height: SizeConfig.vertical * 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Select",
                    style: TextStyle(
                        fontFamily: Palete.cabinRegular,
                        fontSize: SizeConfig.horizontal * 7)),
                SizedBox(width: SizeConfig.horizontal * 2),
                Text("Excercise :",
                    style: TextStyle(
                        fontFamily: Palete.cabinSemiBold,
                        fontSize: SizeConfig.horizontal * 7)),
              ],
            ),
            SizedBox(
              height: SizeConfig.vertical * 7,
            ),
            ExcerciseLayout(
                icon: Icons.category,
                menuTitle: "Let's Symbolize",
                paddingTitle: SizeConfig.vertical * 2,
                width: SizeConfig.horizontal * 3,
                onTap: () {}),
            SizedBox(
              height: SizeConfig.vertical * 5,
            ),
            ExcerciseLayout(
                icon: Icons.spellcheck,
                menuTitle: "Word Guessing",
                paddingTitle: SizeConfig.vertical * 2,
                width: SizeConfig.horizontal * 3,
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}

