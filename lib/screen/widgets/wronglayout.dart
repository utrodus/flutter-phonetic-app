import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';

class WrongLayout extends StatelessWidget {
  final String currentSymbol;
  WrongLayout({Key key, this.currentSymbol}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(bottom: SizeConfig.vertical * 5),
              padding: EdgeInsets.only(
                top: SizeConfig.vertical * 1,
                bottom: SizeConfig.vertical * 1,
                right: SizeConfig.horizontal * 4,
                left: SizeConfig.horizontal * 4,
              ),
              decoration:
                  BoxDecoration(border: Border.all(color: Palete.borderGrey)),
              child: Text(
                currentSymbol ?? "",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.horizontal * 5),
              )),
        ],
      ),
    );
  }
}
