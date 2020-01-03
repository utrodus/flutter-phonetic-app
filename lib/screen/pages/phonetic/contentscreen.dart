import 'package:flutter/material.dart';
import 'package:phono/screen/pages/state/symbol.dart';
import 'package:phono/screen/widgets/contentlayout.dart';
import 'package:provider/provider.dart';

class ContentScreen extends StatelessWidget {
  ContentScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentSymbol = Provider.of<Simbol>(context).getCurrentSymbol;
    return Expanded(
        flex: 3,
        child: Stack(
          children: <Widget>[
            ContentLayout(
              visible: currentSymbol == 0 ? true : false,
              symbol: "f",
              gif: "assets/gif/b.gif",
              audio: "f.mp3",
              materi:
                  "Voiceless Labiodental Fricative\n1. Gently bite the lower lip to leave a tiny gap.\n2. Partially block the airflow with the lower lip and the upper teeth to create a lot friction.\n3. Do not vibrate the vocal cords.\nMost often represented by the letter F. Then by 2 letter FF, PH, GH.\nTongue twister: A fisher named Fischer fished for fish from the edge of fissure",
            ),
            ContentLayout(
              visible: currentSymbol == 1 ? true : false,
              symbol: "v",
              gif: "assets/gif/d.gif",
              audio: "v.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 2 ? true : false,
              symbol: "p",
              gif: "assets/gif/b.gif",
              audio: "p.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 3 ? true : false,
              symbol: "b",
              gif: "assets/gif/b.gif",
              audio: "b.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 4 ? true : false,
              symbol: "dʒ",
              gif: "assets/gif/b.gif",
              audio: "d3.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 5 ? true : false,
              symbol: "tʃ",
              gif: "assets/gif/b.gif",
              audio: "tf.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 6 ? true : false,
              symbol: "i",
              gif: "assets/gif/b.gif",
              audio: "i.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 7 ? true : false,
              symbol: "u",
              gif: "assets/gif/b.gif",
              audio: "u.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 8 ? true : false,
              symbol: "s",
              gif: "assets/gif/b.gif",
              audio: "s.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 9 ? true : false,
              symbol: "z",
              gif: "assets/gif/b.gif",
              audio: "z.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 10 ? true : false,
              symbol: "t",
              gif: "assets/gif/b.gif",
              audio: "t.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 11 ? true : false,
              symbol: "d",
              gif: "assets/gif/b.gif",
              audio: "d.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 12 ? true : false,
              symbol: "l",
              gif: "assets/gif/b.gif",
              audio: "l.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 13 ? true : false,
              symbol: "l",
              gif: "assets/gif/b.gif",
              audio: "l.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 14 ? true : false,
              symbol: "ɪ",
              gif: "assets/gif/b.gif",
              audio: "ɪ.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 15 ? true : false,
              symbol: "ʌ",
              gif: "assets/gif/b.gif",
              audio: "v2.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 16 ? true : false,
              symbol: "ʊ",
              gif: "assets/gif/b.gif",
              audio: "u2.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 17 ? true : false,
              symbol: "ʃ",
              gif: "assets/gif/b.gif",
              audio: "ff.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 18 ? true : false,
              symbol: "ʒ",
              gif: "assets/gif/b.gif",
              audio: "3.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 19 ? true : false,
              symbol: "k",
              gif: "assets/gif/b.gif",
              audio: "k.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 20 ? true : false,
              symbol: "g",
              gif: "assets/gif/b.gif",
              audio: "g.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 21 ? true : false,
              symbol: "w",
              gif: "assets/gif/b.gif",
              audio: "w.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 22 ? true : false,
              symbol: "j",
              gif: "assets/gif/b.gif",
              audio: "j.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 23 ? true : false,
              symbol: "ə",
              gif: "assets/gif/b.gif",
              audio: "ewalik.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 24 ? true : false,
              symbol: "θ",
              gif: "assets/gif/b.gif",
              audio: "θ.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 25 ? true : false,
              symbol: "ð",
              gif: "assets/gif/b.gif",
              audio: "ð.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 26 ? true : false,
              symbol: "m",
              gif: "assets/gif/b.gif",
              audio: "m.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 27 ? true : false,
              symbol: "n",
              gif: "assets/gif/b.gif",
              audio: "n.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 28 ? true : false,
              symbol: "e",
              gif: "assets/gif/b.gif",
              audio: "e.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 29 ? true : false,
              symbol: "h",
              gif: "assets/gif/b.gif",
              audio: "h.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 30 ? true : false,
              symbol: "ŋ",
              gif: "assets/gif/b.gif",
              audio: "n2.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 31 ? true : false,
              symbol: "ae",
              gif: "assets/gif/b.gif",
              audio: "eponi.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 32 ? true : false,
              symbol: "ɑ",
              gif: "assets/gif/b.gif",
              audio: "a.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 33 ? true : false,
              symbol: "ɔ",
              gif: "assets/gif/b.gif",
              audio: "c2.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 34 ? true : false,
              symbol: "ɝ",
              gif: "assets/gif/b.gif",
              audio: "3buntut.mp3",
            ),
            ContentLayout(
              visible: currentSymbol == 35 ? true : false,
              symbol: "ɚ",
              gif: "assets/gif/b.gif",
              audio: "ebuntut.mp3",
            ),
            

          ],
        ));
  }
}
