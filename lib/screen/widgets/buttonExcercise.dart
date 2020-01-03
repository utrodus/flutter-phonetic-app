import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';

Widget ExcerciseLayout(
    {void Function() onTap,
    IconData icon,
    menuTitle,
    double width,
    paddingTitle}) {
  return Material(
    color: Palete.blueButton,
    borderRadius: BorderRadius.circular(14),
    child: InkWell(
      onTap: onTap,
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(14), boxShadow: [
          BoxShadow(
              color: Palete.shadowBlue,
              offset: new Offset(1.0, 1.0),
              blurRadius: 2.0,
              spreadRadius: 2.0)
        ]),
        height: SizeConfig.vertical * 10,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: SizeConfig.horizontal *8,
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(left: paddingTitle),
              child: Text(
                menuTitle,
                style: TextStyle(
                    color: Palete.white,
                    fontFamily: Palete.cabinSemiBold,
                    fontSize: SizeConfig.horizontal * 5),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
