import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/widgets/menuitemlayout.dart';
import 'package:phono/screen/style/palete.dart';

class MenuItem extends StatefulWidget {
  MenuItem({Key key}) : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only(bottom: SizeConfig.vertical * 2),
      margin: EdgeInsets.only(top: SizeConfig.vertical * 3.8),
      child: Column(
        children: <Widget>[
          menuItemLayout(context,
              icon: Palete.book,
              width: SizeConfig.horizontal * 9,
              paddingTitle: SizeConfig.horizontal * 6,
              menuTitle: "Introduction to Phonetics", onTap: () {
            Navigator.pushNamed(context, introRoute);
          }),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.vertical * 2.8),
            child: menuItemLayout(context,
                icon: Palete.ae,
                paddingTitle: SizeConfig.horizontal * 3.8,
                width: SizeConfig.horizontal * 11,
                menuTitle: "Phonemic Chart", onTap: () {
              Navigator.pushNamed(context, phoneticRoute);
            }),
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.vertical * 2.8),
            child: menuItemLayout(context,
                icon: Palete.homework,
                paddingTitle: SizeConfig.horizontal * 3.8,
                width: SizeConfig.horizontal * 11,
                menuTitle: "Exercise", onTap: () {
              Navigator.pushNamed(context, exerciseRoute);
            }),
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.vertical * 2.8),
            child: menuItemLayout(context,
                icon: Palete.info,
                paddingTitle: SizeConfig.horizontal * 3.8,
                width: SizeConfig.horizontal * 11,
                menuTitle: "Information", onTap: () {
              Navigator.pushNamed(context, infoRoute);
            }),
          ),
        ],
      ),
    );
  }
}
