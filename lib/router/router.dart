import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/screen.dart';
import 'package:phono/screen/pages/exercise/symbolize/quizpage/1.dart';
import 'package:phono/screen/pages/exercise/symbolize/quizpage/2.dart';
import 'package:phono/screen/pages/exercise/word/screen.dart';
import 'package:phono/screen/pages/information/screen.dart';
import 'package:phono/screen/pages/introduction/screen.dart';
import 'package:phono/screen/pages/mainmenu/screen.dart';
import 'package:phono/screen/pages/phonetic/screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainRoute:
        return MaterialPageRoute(builder: (_) => MainMenu());
      case introRoute:
        return MaterialPageRoute(builder: (_) => Intro());
      case phoneticRoute:
        return MaterialPageRoute(builder: (_) => Phonetic());
      case exerciseRoute:
        return MaterialPageRoute(builder: (_) => Exercise());
      case infoRoute:
        return MaterialPageRoute(builder: (_) => Information());
      case symbolize1:
        return MaterialPageRoute(builder: (_) => Symbolize1());
      case symbolize2:
        return MaterialPageRoute(builder: (_) => Symbolize2());
      case word:
        return MaterialPageRoute(builder: (_) => WordGuess());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
