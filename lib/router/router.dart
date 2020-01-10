import 'package:flutter/material.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/exercise/layout/gameover.dart';
import 'package:phono/screen/pages/exercise/screen.dart';
import 'package:phono/screen/pages/exercise/symbolize/quizpage/1.dart';
import 'package:phono/screen/pages/exercise/symbolize/quizpage/10.dart';
import 'package:phono/screen/pages/exercise/symbolize/quizpage/2.dart';
import 'package:phono/screen/pages/exercise/symbolize/quizpage/3.dart';
import 'package:phono/screen/pages/exercise/symbolize/quizpage/4.dart';
import 'package:phono/screen/pages/exercise/symbolize/quizpage/5.dart';
import 'package:phono/screen/pages/exercise/symbolize/quizpage/6.dart';
import 'package:phono/screen/pages/exercise/symbolize/quizpage/7.dart';
import 'package:phono/screen/pages/exercise/symbolize/quizpage/8.dart';
import 'package:phono/screen/pages/exercise/symbolize/quizpage/9.dart';
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
      case symbolize3:
        return MaterialPageRoute(builder: (_) => Symbolize3());
      case symbolize4:
        return MaterialPageRoute(builder: (_) => Symbolize4());
      case symbolize5:
        return MaterialPageRoute(builder: (_) => Symbolize5());
      case symbolize6:
        return MaterialPageRoute(builder: (_) => Symbolize6());
      case symbolize7:
        return MaterialPageRoute(builder: (_) => Symbolize7());
      case symbolize8:
        return MaterialPageRoute(builder: (_) => Symbolize8());
      case symbolize9:
        return MaterialPageRoute(builder: (_) => Symbolize9());
      case symbolize10:
        return MaterialPageRoute(builder: (_) => Symbolize10());
      case word:
        return MaterialPageRoute(builder: (_) => WordGuess());

      // Pindah Halaman dan Passing Argument  
      case gameover:
        GameOverArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => GameOver(title: data.title, ontap: data.ontap));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

class GameOverArgument {
  final String title;
  final Function ontap;
  GameOverArgument({this.ontap, this.title});
}
