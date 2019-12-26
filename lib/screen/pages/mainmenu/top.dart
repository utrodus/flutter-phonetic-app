import 'package:flutter/material.dart';
import 'package:ipa/screen/style/config.dart';
import 'package:ipa/screen/style/palete.dart';

class TopContent extends StatelessWidget {
  const TopContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.vertical * 30,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: Palete.blueGradient,
            begin: Alignment.bottomRight,
            end: Alignment.topLeft),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        image: DecorationImage(
            image: AssetImage(Palete.phoneImg),
            fit: BoxFit.fitHeight,
            alignment: Alignment.topRight),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: SizeConfig.horizontal * 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Welcome to",
                  style: TextStyle(
                      color: Palete.white,
                      fontFamily: Palete.cabinRegular,
                      fontSize: SizeConfig.horizontal * 4.5),
                ),
                Container(
                    margin: EdgeInsets.only(left: SizeConfig.horizontal * 1),
                    padding: EdgeInsets.only(
                        left: SizeConfig.horizontal * 0.8,
                        right: SizeConfig.horizontal * 0.8),
                    decoration: BoxDecoration(
                        color: Palete.pink,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "IPA",
                      style: TextStyle(
                          color: Palete.white,
                          fontFamily: Palete.cabinSemiBold,
                          fontSize: SizeConfig.horizontal * 4.5),
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.vertical * 1.0),
              child: Text(
                "International",
                style: TextStyle(
                    color: Palete.white,
                    fontSize: SizeConfig.horizontal * 5.2,
                    fontFamily: Palete.cabinSemiBold),
              ),
            ),
            Text(
              "Phonetic",
              style: TextStyle(
                  color: Palete.white,
                  fontSize: SizeConfig.horizontal * 5.2,
                  fontFamily: Palete.cabinSemiBold),
            ),
            Text(
              "Alphabet",
              style: TextStyle(
                  color: Palete.white,
                  fontSize: SizeConfig.horizontal * 5.2,
                  fontFamily: Palete.cabinSemiBold),
            ),
          ],
        ),
      ),
    );
  }
}
