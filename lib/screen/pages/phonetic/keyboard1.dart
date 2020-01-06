import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/widgets/keyboardlayout.dart';
import 'package:provider/provider.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/pages/state/symbol.dart';

Widget keyBoard1(
  BuildContext context,
  consonant,
  vowel,
  visible,
  onTap,
) {
  SizeConfig().init(context);
  return Visibility(
    visible: visible,
    child: Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Container(
            //   padding: EdgeInsets.only(
            //     top: SizeConfig.vertical * 0.5,
            //     right: SizeConfig.vertical * 3,
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: <Widget>[
            //       Material(
            //         color: Colors.transparent,
            //         child: InkWell(
            //           onTap: onTap,
            //           child: Container(
            //             padding: EdgeInsets.only(
            //               top: SizeConfig.vertical * 0.5,
            //               bottom: SizeConfig.vertical * 0.5,
            //               right: SizeConfig.horizontal * 2.5,
            //               left: SizeConfig.horizontal * 2.5,
            //             ),
            //             decoration: BoxDecoration(
            //                 color: Palete.keyboardNext,
            //                 borderRadius: BorderRadius.circular(15)),
            //             child: Row(
            //               children: <Widget>[
            //                 Container(
            //                   child: Text(
            //                     "Next",
            //                     style: TextStyle(
            //                       color: Palete.white,
            //                     ),
            //                   ),
            //                 ),

            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // TODO : BARIS 1
            Container(
              margin: EdgeInsets.only(top: SizeConfig.vertical * 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(right: SizeConfig.horizontal * 1.4),
                    child: KeyboardLayout(
                      symbol: "f",
                      audio: "f.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(0);
                        consonant.play("f.mp3");
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "v",
                    audio: "v.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(1);
                      consonant.play("v.mp3");
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
                        consonant.play("p.mp3");
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "b",
                    audio: "b.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(3);
                      consonant.play("b.mp3");
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
                        consonant.play("d3.mp3");
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "tʃ",
                    audio: "tf.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(5);
                      consonant.play("tf.mp3");
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
                        vowel.play("i.mp3");
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: SizeConfig.horizontal * 1),
                    child: KeyboardLayout(
                      symbol: "-",
                      audio: "i.mp3",
                      ontap: () {
                        // Provider.of<Simbol>(context).setCurrentSymbol(5);
                        // vowel.play("i.mp3");
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "u",
                    audio: "u.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(7);
                      vowel.play("u.mp3");
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
                    padding:
                        EdgeInsets.only(right: SizeConfig.horizontal * 1.4),
                    child: KeyboardLayout(
                      symbol: "s",
                      audio: "s.mp3",
                      ontap: () {
                        Provider.of<Simbol>(context).setCurrentSymbol(8);
                        consonant.play("s.mp3");
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "z",
                    audio: "z.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(9);
                      consonant.play("z.mp3");
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
                        consonant.play("t.mp3");
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "d",
                    audio: "d.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(11);
                      consonant.play("d.mp3");
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
                        consonant.play("r.mp3");
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
                        consonant.play("l.mp3");
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
                        vowel.play("ɪ.mp3");
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
                        vowel.play("v2.mp3");
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "ʊ",
                    audio: "u2.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(16);
                      vowel.play("u2.mp3");
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
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(17);
                                consonant.play("ff.mp3");
                              },
                            ),
                          ),
                          KeyboardLayout(
                            symbol: "ʒ",
                            audio: "3.mp3",
                            ontap: () {
                              Provider.of<Simbol>(context).setCurrentSymbol(18);
                              consonant.play("3.mp3");
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
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(24);
                                consonant.play("0.mp3");
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
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(25);
                                consonant.play("03.mp3");
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: SizeConfig.vertical * 0.5),
                        child: KeyboardLayout(
                          symbol: "h",
                          audio: "h.mp3",
                          ontap: () {
                            Provider.of<Simbol>(context).setCurrentSymbol(29);
                            consonant.play("h.mp3");
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
                        consonant.play("k.mp3");
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "g",
                    audio: "g.mp3",
                    ontap: () {
                      Provider.of<Simbol>(context).setCurrentSymbol(20);
                      consonant.play("g.mp3");
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
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(21);
                                consonant.play("w.mp3");
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
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(22);
                                consonant.play("j.mp3");
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
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(26);
                                consonant.play("m.mp3");
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
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(27);
                                consonant.play("n.mp3");
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
                            consonant.play("n2.mp3");
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
                              audio: "ɪ.mp3",
                              ontap: () {
                                // Provider.of<Simbol>(context)
                                //     .setCurrentSymbol(5);
                                // vowel.play("ɪ.mp3");
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.horizontal * 1),
                            child: KeyboardLayout(
                              symbol: "ə",
                              audio: "ewalik.mp3",
                              ontap: () {
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(23);
                                vowel.play("ewalik.mp3");
                              },
                            ),
                          ),
                          KeyboardLayout(
                            symbol: "-",
                            audio: "u2.mp3",
                            ontap: () {
                              // Provider.of<Simbol>(context).setCurrentSymbol(5);
                              // vowel.play("u2.mp3");
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: SizeConfig.vertical * 0.5),
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
                                  vowel.play("e.mp3");
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: SizeConfig.horizontal * 1),
                              child: KeyboardLayout(
                                symbol: "-",
                                audio: "v2.mp3",
                                ontap: () {
                                  // Provider.of<Simbol>(context)
                                  //     .setCurrentSymbol(5);
                                  // vowel.play("v2.mp3");
                                },
                              ),
                            ),
                            KeyboardLayout(
                              symbol: "-",
                              audio: "u2.mp3",
                              ontap: () {
                                // Provider.of<Simbol>(context)
                                //     .setCurrentSymbol(5);
                                // vowel.play("u2.mp3");
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: SizeConfig.vertical * 0.5),
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
                                  vowel.play("eponi.mp3");
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
                                  vowel.play("a.mp3");
                                },
                              ),
                            ),
                            KeyboardLayout(
                              symbol: "ɔ",
                              audio: "c2.mp3",
                              ontap: () {
                                Provider.of<Simbol>(context)
                                    .setCurrentSymbol(33);
                                vowel.play("c2.mp3");
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: SizeConfig.vertical * 1.3),
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
                                  vowel.play("3buntut.mp3");
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
                                  vowel.play("ebuntut.mp3");
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
    ),
  );
}
