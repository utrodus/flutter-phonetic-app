import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';

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
                      fontSize: SizeConfig.horizontal * 5.5),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: SizeConfig.vertical * 1.5,
                    bottom: SizeConfig.vertical * 0.1,
                    ),
                child: Container(
                    padding: EdgeInsets.only(
                        left: SizeConfig.horizontal * 0.8,
                        right: SizeConfig.horizontal * 0.8),
                    decoration: BoxDecoration(
                        color: Palete.pink,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Phono",
                      style: TextStyle(
                          color: Palete.white,
                          fontFamily: Palete.cabinBold,
                          fontSize: SizeConfig.horizontal * 8),
                    ))),
            Text(
              "/Foʊ.noʊ/",
              style: TextStyle(
                  color: Palete.white,
                  fontSize: SizeConfig.horizontal * 5.5,
                  fontWeight: FontWeight.normal),
            ),
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.vertical * 1),
              child: Text(
                "App",
                style: TextStyle(
                    color: Palete.white,
                    fontSize: SizeConfig.horizontal * 5.5,
                    fontFamily: Palete.cabinMedium),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
