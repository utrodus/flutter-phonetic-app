import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';

class KeyboardLayout extends StatelessWidget {
  final String symbol;
  final String audio;
  final ontap;
  KeyboardLayout({
    Key key,
    this.symbol,
    this.audio,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
          child: InkWell(
        onTap: ontap,
        child: Container(
          alignment: Alignment.center,
          width: SizeConfig.horizontal *9,
          margin: EdgeInsets.only(bottom: SizeConfig.horizontal*1),
          decoration: BoxDecoration(
            color: Palete.phoneticButton,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              new BoxShadow(
                  color: Palete.keyboardShadow,
                  offset: new Offset(0.0, 3.5),
                  spreadRadius: 0.1)
            ],
          ),
          padding: EdgeInsets.only(
            top: SizeConfig.vertical * 0.5,
            bottom: SizeConfig.vertical * 0.5,
            left: SizeConfig.horizontal * 1,
            right: SizeConfig.horizontal * 1,
          ),
          child: Container(
            child: Text(
              symbol,
              style: TextStyle(
                  color: Palete.white,
                  fontSize: SizeConfig.horizontal * 4.5),
            ),
          ),
        ),
      ),
    );
  }
}
