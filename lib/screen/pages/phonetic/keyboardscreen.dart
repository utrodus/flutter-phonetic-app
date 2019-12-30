import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:ipa/screen/pages/state/symbol.dart';
import 'package:ipa/screen/style/config.dart';
import 'package:ipa/screen/widgets/keyboardlayout.dart';
import 'package:provider/provider.dart';

class KeyboardScreen extends StatelessWidget {
  final AudioCache player = AudioCache(prefix: 'audio/');
  KeyboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Expanded(
        flex: 1,
        child: Container(
          
          // decoration: BoxDecoration(color: Colors.black38),
          child: ListView(
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.only(top: SizeConfig.vertical *2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    KeyboardLayout(
                      symbol: "b",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "d",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "ð",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "dʒ",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "f",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "g",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "h",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "j",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "k",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                  ],
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    KeyboardLayout(
                      symbol: "b",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "d",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "ð",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "dʒ",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "f",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "g",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "h",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "j",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "k",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                  ],
                ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    KeyboardLayout(
                      symbol: "b",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "d",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "ð",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "dʒ",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "f",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "g",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "h",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "j",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "k",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                  ],
                ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    KeyboardLayout(
                      symbol: "b",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "d",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "ð",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "dʒ",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "f",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "g",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "h",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "j",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "k",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                  ],
                ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    KeyboardLayout(
                      symbol: "b",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "d",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "ð",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "dʒ",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "f",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "g",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "h",
                      audio: "b.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);

                        player.play("b.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "j",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                    KeyboardLayout(
                      symbol: "k",
                      audio: "d.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(1);
                        player.play("d.mp3");
                      },
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
