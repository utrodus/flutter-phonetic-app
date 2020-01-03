import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';

Widget menuItemLayout(BuildContext context,
    {void Function() onTap, String icon, menuTitle, double width, paddingTitle}) {
  return Material(
    
    borderRadius: BorderRadius.circular(8),    
    color: Palete.blueMenu,
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: SizeConfig.vertical * 12,
        width: SizeConfig.horizontal * 86,
      
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.horizontal * 5),
              child: Image(
                image: AssetImage(icon),
                width: width,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: paddingTitle),
              child: Text(
                menuTitle,
                style: TextStyle(
                    color: Palete.white,
                    fontFamily: Palete.cabinMedium,
                    fontSize: SizeConfig.horizontal * 5.2),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
