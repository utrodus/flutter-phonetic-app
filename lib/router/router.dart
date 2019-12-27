import 'package:flutter/material.dart';
import 'package:ipa/constant/constantroute.dart';
import 'package:ipa/screen/pages/introduction/screen.dart';
import 'package:ipa/screen/pages/mainmenu/screen.dart';


class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainRoute:
        return MaterialPageRoute(builder: (_) => MainMenu());
      case introRoute:
        return MaterialPageRoute(builder: (_) => Intro());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
