import 'package:flutter/material.dart';
import 'package:ipa/screen/style/config.dart';
import 'package:ipa/screen/widgets/menuitemlayout.dart';
import 'package:ipa/screen/style/palete.dart';

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
            print("halo");
          }),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.vertical * 2.8),
            child: menuItemLayout(context,
                icon: Palete.ae,
                paddingTitle: SizeConfig.horizontal * 3.8,
                width: SizeConfig.horizontal * 11,
                menuTitle: "Phonetics Chart", onTap: () {
              print("halo");
            }),
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.vertical * 2.8),
            child: menuItemLayout(context,
                icon: Palete.homework,
                paddingTitle: SizeConfig.horizontal * 3.8,
                width: SizeConfig.horizontal * 11,
                menuTitle: "Exercise", onTap: () {
              print("halo");
            }),
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.vertical * 2.8),
            child: menuItemLayout(context,
                icon: Palete.info,
                paddingTitle: SizeConfig.horizontal * 3.8,
                width: SizeConfig.horizontal * 11,
                menuTitle: "Information", onTap: () {
              print("halo");
            }),
          ),
        ],
      ),
    );
  }
}
