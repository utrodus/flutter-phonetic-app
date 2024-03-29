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
import 'package:phono/screen/pages/exercise/word/quizpage/1.dart';
import 'package:phono/screen/pages/exercise/word/quizpage/10.dart';
import 'package:phono/screen/pages/exercise/word/quizpage/2.dart';
import 'package:phono/screen/pages/exercise/word/quizpage/3.dart';
import 'package:phono/screen/pages/exercise/word/quizpage/4.dart';
import 'package:phono/screen/pages/exercise/word/quizpage/5.dart';
import 'package:phono/screen/pages/exercise/word/quizpage/6.dart';
import 'package:phono/screen/pages/exercise/word/quizpage/7.dart';
import 'package:phono/screen/pages/exercise/word/quizpage/8.dart';
import 'package:phono/screen/pages/exercise/word/quizpage/9.dart';
import 'package:phono/screen/pages/information/screen.dart';
import 'package:phono/screen/pages/introduction/screen.dart';
import 'package:phono/screen/pages/mainmenu/screen.dart';
import 'package:phono/screen/pages/phonetic/screen.dart';
import 'package:phono/screen/pages/phonetic/twisterscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/32/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/3buntut/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/I/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/b/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/f/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/g/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/h/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/obuntut/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/r/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/s2/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/t/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/teta/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/u/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/u2/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/v/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/w/wrongscreen.dart';
import 'package:phono/screen/pages/phonetic/wrong/z/wrongscreen.dart';

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
      case word1:
        return MaterialPageRoute(builder: (_) => Word1());
      case word2:
        return MaterialPageRoute(builder: (_) => Word2());
      case word3:
        return MaterialPageRoute(builder: (_) => Word3());
      case word4:
        return MaterialPageRoute(builder: (_) => Word4());
      case word5:
        return MaterialPageRoute(builder: (_) => Word5());
      case word6:
        return MaterialPageRoute(builder: (_) => Word6());
      case word7:
        return MaterialPageRoute(builder: (_) => Word7());
      case word8:
        return MaterialPageRoute(builder: (_) => Word8());
      case word9:
        return MaterialPageRoute(builder: (_) => Word9());
      case word10:
        return MaterialPageRoute(builder: (_) => Word10());

      // Pindah Halaman dan Passing Argument
      case gameover:
        GameOverArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => GameOver(title: data.title, ontap: data.ontap));

      case twister:
        TwisterArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Twister(
                  symbol: data.symbol,
                  kalimat: data.kalimat,
                ));

      case wrongf:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongf(
                  simbol: data.symbol,
                ));

      case wrongv:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongv(
                  simbol: data.symbol,
                ));

      case wrongb:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongb(
                  simbol: data.symbol,
                ));

      case wrongu:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongu(
                  simbol: data.symbol,
                ));

      case wrongz:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongz(
                  simbol: data.symbol,
                ));

      case wrongt:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongt(
                  simbol: data.symbol,
                ));

      case wrongr:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongr(
                  simbol: data.symbol,
                ));

      case wrongI:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => WrongI(
                  simbol: data.symbol,
                ));

      case wrongu2:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongu2(
                  simbol: data.symbol,
                ));

      case wrongs2:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongs2(
                  simbol: data.symbol,
                ));

      case wrong32:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrong32(
                  simbol: data.symbol,
                ));

      case wrongg:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongg(
                  simbol: data.symbol,
                ));

      case wrongw:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongw(
                  simbol: data.symbol,
                ));

      case wrongteta:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongteta(
                  simbol: data.symbol,
                ));

      case wrongh:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongh(
                  simbol: data.symbol,
                ));

      case wrong3buntut:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrong3buntut(
                  simbol: data.symbol,
                ));

      case wrongobuntut:
        WrongArgument data = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => Wrongobuntut(
                  simbol: data.symbol,
                ));

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

class TwisterArgument {
  final String symbol;
  final String kalimat;
  TwisterArgument(
    this.symbol,
    this.kalimat,
  );
}

class WrongArgument {
  final String symbol;
  WrongArgument({
    this.symbol,
  });
}
