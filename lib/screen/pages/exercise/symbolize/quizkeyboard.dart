import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/widgets/keyboardlayout.dart';
import 'package:provider/provider.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/pages/state/symbol.dart';

Widget quizKeyboard(
  BuildContext context,
) {
  SizeConfig().init(context);
  return Container(
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // TODO : BARIS 1
          Container(
            margin: EdgeInsets.only(top: SizeConfig.vertical * 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: SizeConfig.horizontal * 1.4),
                  child: KeyboardLayout(
                    symbol: "f",
                    audio: "f.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(0);
                    },
                  ),
                ),
                KeyboardLayout(
                  symbol: "v",
                  audio: "v.mp3",
                  ontap: () {
                    Provider.of<Simbol>(context).setCurrentSymbol(1);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: SizeConfig.horizontal * 1.4,
                      left: SizeConfig.horizontal * 3),
                  child: KeyboardLayout(
                    symbol: "p",
                    audio: "p.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(2);
                    },
                  ),
                ),
                KeyboardLayout(
                  symbol: "b",
                  audio: "b.mp3",
                  ontap: () {
                    Provider.of<Simbol>(context).setCurrentSymbol(3);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: SizeConfig.horizontal * 1.4,
                      left: SizeConfig.horizontal * 3),
                  child: KeyboardLayout(
                    symbol: "dʒ",
                    audio: "d3.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(4);
                    },
                  ),
                ),
                KeyboardLayout(
                  symbol: "tʃ",
                  audio: "tf.mp3",
                  ontap: () {
                    Provider.of<Simbol>(context).setCurrentSymbol(5);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.horizontal * 4,
                      right: SizeConfig.horizontal * 1),
                  child: KeyboardLayout(
                    symbol: "i",
                    audio: "i.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(6);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: SizeConfig.horizontal * 1),
                  child: KeyboardLayout(
                    symbol: "-",
                    buttonColor: Palete.unusedColor,
                    buttonShadow: Palete.unusedShadow,
                    audio: "i.mp3",
                    ontap: () {
                      // Provider.of<Simbol>(context).setCurrentSymbol(5);
                      //
                    },
                  ),
                ),
                KeyboardLayout(
                  symbol: "u",
                  audio: "u.mp3",
                  ontap: () {
                    Provider.of<Simbol>(context).setCurrentSymbol(7);
                  },
                ),
              ],
            ),
          ),

          // TODO : BARIS 2
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: SizeConfig.horizontal * 1.4),
                  child: KeyboardLayout(
                    symbol: "s",
                    audio: "s.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(8);
                    },
                  ),
                ),
                KeyboardLayout(
                  symbol: "z",
                  audio: "z.mp3",
                  ontap: () {
                    Provider.of<Simbol>(context).setCurrentSymbol(9);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: SizeConfig.horizontal * 1.4,
                      left: SizeConfig.horizontal * 3),
                  child: KeyboardLayout(
                    symbol: "t",
                    audio: "t.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(10);
                    },
                  ),
                ),
                KeyboardLayout(
                  symbol: "d",
                  audio: "d.mp3",
                  ontap: () {
                    Provider.of<Simbol>(context).setCurrentSymbol(11);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: SizeConfig.horizontal * 1.4,
                      top: SizeConfig.vertical * 1,
                      left: SizeConfig.horizontal * 3),
                  child: KeyboardLayout(
                    symbol: "ɹ",
                    audio: "r.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(12);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.vertical * 1),
                  child: KeyboardLayout(
                    symbol: "l",
                    audio: "l.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(13);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.horizontal * 4,
                      right: SizeConfig.horizontal * 1),
                  child: KeyboardLayout(
                    symbol: "ɪ",
                    audio: "ɪ.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(14);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: SizeConfig.horizontal * 1),
                  child: KeyboardLayout(
                    symbol: "ʌ",
                    audio: "v2.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(15);
                    },
                  ),
                ),
                KeyboardLayout(
                  symbol: "ʊ",
                  audio: "u2.mp3",
                  ontap: () {
                    Provider.of<Simbol>(context).setCurrentSymbol(16);
                  },
                ),
              ],
            ),
          ),

          // TODO : BARIS 3
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            right: SizeConfig.horizontal * 1.4,
                          ),
                          child: KeyboardLayout(
                            symbol: "ʃ",
                            audio: "ff.mp3",
                            ontap: () {
                              Provider.of<Simbol>(context).setCurrentSymbol(17);
                            },
                          ),
                        ),
                        KeyboardLayout(
                          symbol: "ʒ",
                          audio: "3.mp3",
                          ontap: () {
                            Provider.of<Simbol>(context).setCurrentSymbol(18);
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.vertical * 0.5,
                            right: SizeConfig.horizontal * 1.4,
                          ),
                          child: KeyboardLayout(
                            symbol: "θ",
                            audio: "0.mp3",
                            ontap: () {
                              Provider.of<Simbol>(context).setCurrentSymbol(24);
                            },
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: SizeConfig.vertical * 0.5),
                          child: KeyboardLayout(
                            symbol: "ð",
                            audio: "ð.mp3",
                            ontap: () {
                              Provider.of<Simbol>(context).setCurrentSymbol(25);
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.vertical * 0.5),
                      child: KeyboardLayout(
                        symbol: "h",
                        audio: "h.mp3",
                        ontap: () {
                          Provider.of<Simbol>(context).setCurrentSymbol(29);
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: SizeConfig.horizontal * 1.4,
                      left: SizeConfig.horizontal * 3),
                  child: KeyboardLayout(
                    symbol: "k",
                    audio: "k.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(19);
                    },
                  ),
                ),
                KeyboardLayout(
                  symbol: "g",
                  audio: "g.mp3",
                  ontap: () {
                    Provider.of<Simbol>(context).setCurrentSymbol(20);
                  },
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.vertical * 1,
                              right: SizeConfig.horizontal * 1.4,
                              left: SizeConfig.horizontal * 3),
                          child: KeyboardLayout(
                            symbol: "w",
                            audio: "w.mp3",
                            ontap: () {
                              Provider.of<Simbol>(context).setCurrentSymbol(21);
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.vertical * 1,
                          ),
                          child: KeyboardLayout(
                            symbol: "j",
                            audio: "j.mp3",
                            ontap: () {
                              Provider.of<Simbol>(context).setCurrentSymbol(22);
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.vertical * 1,
                              right: SizeConfig.horizontal * 1.4,
                              left: SizeConfig.horizontal * 3.5),
                          child: KeyboardLayout(
                            symbol: "m",
                            audio: "m.mp3",
                            ontap: () {
                              Provider.of<Simbol>(context).setCurrentSymbol(26);
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.vertical * 1,
                          ),
                          child: KeyboardLayout(
                            symbol: "n",
                            audio: "n.mp3",
                            ontap: () {
                              Provider.of<Simbol>(context).setCurrentSymbol(27);
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.horizontal * 2.5,
                          top: SizeConfig.vertical * 0.5),
                      child: KeyboardLayout(
                        symbol: "ŋ",
                        audio: "n2.mp3",
                        ontap: () {
                          Provider.of<Simbol>(context).setCurrentSymbol(30);
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.horizontal * 4,
                              right: SizeConfig.horizontal * 1),
                          child: KeyboardLayout(
                            symbol: "-",
                            buttonColor: Palete.unusedColor,
                            buttonShadow: Palete.unusedShadow,
                            audio: "ɪ.mp3",
                            ontap: () {
                              // Provider.of<Simbol>(context)
                              //     .setCurrentSymbol(5);
                              //
                            },
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(right: SizeConfig.horizontal * 1),
                          child: KeyboardLayout(
                            symbol: "ə",
                            audio: "ewalik.mp3",
                            ontap: () {
                              Provider.of<Simbol>(context).setCurrentSymbol(23);
                            },
                          ),
                        ),
                        KeyboardLayout(
                          symbol: "-",
                          audio: "u2.mp3",
                          buttonColor: Palete.unusedColor,
                          buttonShadow: Palete.unusedShadow,
                          ontap: () {
                            // Provider.of<Simbol>(context).setCurrentSymbol(5);
                            //
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.vertical * 0.5),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.horizontal * 4,
                                right: SizeConfig.horizontal * 1),
                            child: KeyboardLayout(
                              symbol: "e",
                              audio: "e.mp3",
                              ontap: () {
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(28);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.horizontal * 1),
                            child: KeyboardLayout(
                              symbol: "-",
                              buttonColor: Palete.unusedColor,
                              buttonShadow: Palete.unusedShadow,
                              audio: "v2.mp3",
                              ontap: () {
                                // Provider.of<Simbol>(context)
                                //     .setCurrentSymbol(5);
                                //
                              },
                            ),
                          ),
                          KeyboardLayout(
                            symbol: "-",
                            buttonColor: Palete.unusedColor,
                            buttonShadow: Palete.unusedShadow,
                            audio: "u2.mp3",
                            ontap: () {
                              // Provider.of<Simbol>(context)
                              //     .setCurrentSymbol(5);
                              //
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.vertical * 0.5),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.horizontal * 4,
                                right: SizeConfig.horizontal * 1),
                            child: KeyboardLayout(
                              symbol: "ae",
                              audio: "eponi.mp3",
                              ontap: () {
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(31);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.horizontal * 1),
                            child: KeyboardLayout(
                              symbol: "ɑ",
                              audio: "a.mp3",
                              ontap: () {
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(32);
                              },
                            ),
                          ),
                          KeyboardLayout(
                            symbol: "ɔ",
                            audio: "c2.mp3",
                            ontap: () {
                              Provider.of<Simbol>(context).setCurrentSymbol(33);
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.vertical * 1.3),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.horizontal * 4,
                                right: SizeConfig.horizontal * 1),
                            child: KeyboardLayout(
                              symbol: "ɝ",
                              audio: "3buntut.mp3",
                              ontap: () {
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(34);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.horizontal * 1),
                            child: KeyboardLayout(
                              symbol: "ɚ",
                              audio: "ebuntut.mp3",
                              ontap: () {
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(35);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
