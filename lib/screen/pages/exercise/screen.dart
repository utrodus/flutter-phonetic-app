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
      body: ListView(
        padding: EdgeInsets.only(top: SizeConfig.vertical * 5, 
        left: SizeConfig.horizontal *3,
        right: SizeConfig.horizontal *3,
        ),
        children: <Widget>[
          SizedBox(
            height: SizeConfig.vertical * 7,
          ),
          Container(
            width: SizeConfig.horizontal * 30,
            height: SizeConfig.horizontal * 30,
            child: Image(
              image: AssetImage(Palete.exercise),
            ),
          ),
          SizedBox(height: SizeConfig.vertical * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Select",
                  style: TextStyle(
                    color: Palete.exerciseMenu,
                      fontFamily: Palete.cabinRegular,
                      fontSize: SizeConfig.horizontal * 6)),
              SizedBox(width: SizeConfig.horizontal * 2),
              Text("Excercise :",
                  style: TextStyle(
                    color: Palete.exerciseMenu,
                      fontFamily: Palete.cabinSemiBold,
                      fontSize: SizeConfig.horizontal * 6)),
            ],
          ),
          SizedBox(
            height: SizeConfig.vertical * 5,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.horizontal * 15.0,
              right: SizeConfig.horizontal * 15.0,
            ),
            child: ExcerciseLayout(
                icon: Icons.category,
                menuTitle: "Let's Symbolize",
                paddingTitle: SizeConfig.vertical * 2,
                width: SizeConfig.horizontal * 3,
                onTap: () {}),
          ),
          SizedBox(
            height: SizeConfig.vertical * 3,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.horizontal * 15.0,
              right: SizeConfig.horizontal * 15.0,
            ),
            child: ExcerciseLayout(
                icon: Icons.spellcheck,
                menuTitle: "Word Guessing",
                paddingTitle: SizeConfig.vertical * 2,
                width: SizeConfig.horizontal * 3,
                onTap: () {}),
          ),
        ],
      ),
    );
  }
}
