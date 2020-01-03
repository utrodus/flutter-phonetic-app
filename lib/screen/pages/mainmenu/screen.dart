import 'package:flutter/material.dart';

import 'package:phono/screen/pages/mainmenu/menu.dart';
import 'package:phono/screen/pages/mainmenu/top.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';

class MainMenu extends StatefulWidget {
  MainMenu({Key key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
   
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: Size.fromHeight(SizeConfig.vertical * 0),
      child: AppBar(
        elevation: 0,
        backgroundColor: Palete.blue,
      ),
    ),
    body: Container(
      decoration: BoxDecoration(
        color: Palete.bgGrey
      ),
      child: ListView(
        children: <Widget>[
          TopContent(),
          MenuItem()
          
        ],
      ),
    ),
    );
  }
}
