import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/keyboardlayout.dart';

class QuizKeyboard extends StatelessWidget
    with KeyboardCustomPanelMixin<String>
    implements PreferredSizeWidget {
  final ValueNotifier<String> notifier;
  final FocusNode focusNode;

  QuizKeyboard({
    Key key,
    this.notifier,
    this.focusNode,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(SizeConfig.vertical * 35);

  String _formatValue(String value) {
    final updatedValue = value;

    return updatedValue;
  }

  void _onTapSymbol(String value) {
    if (value == "Done") {
      focusNode.unfocus();
      return;
    }
    final currentValue = notifier.value;
    final temp = currentValue + value;
    updateValue(_formatValue(temp));
  }

  void _onTapBackspace() {
    final currentValue = notifier.value;
    final temp = currentValue.substring(0, currentValue.length - 1);
    updateValue(_formatValue(temp));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Palete.white,
        boxShadow: [
          new BoxShadow(
              color: Palete.shadowBlue,
              offset: new Offset(0.0, -3.5),
              spreadRadius: 0.1,
              blurRadius: 3)
        ],
      ),
      height: preferredSize.height,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // TODO : BARIS 1
            Container(
              margin: EdgeInsets.only(top: SizeConfig.vertical * 0.8),
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
                        _onTapSymbol('f');
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "v",
                    audio: "v.mp3",
                    ontap: () {
                      _onTapSymbol('v');
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
                        _onTapSymbol('p');
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "b",
                    audio: "b.mp3",
                    ontap: () {
                      _onTapSymbol('b');
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
                        _onTapSymbol('dʒ');
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "tʃ",
                    audio: "tf.mp3",
                    ontap: () {
                      _onTapSymbol('tʃ');
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
                        _onTapSymbol('i');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: SizeConfig.horizontal * 1),
                    child: KeyboardLayout(
                      symbol: "o",
                      audio: "i.mp3",
                      ontap: () {
                        _onTapSymbol('o');
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "u",
                    audio: "u.mp3",
                    ontap: () {
                      _onTapSymbol('u');
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
                        _onTapSymbol('s');
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "z",
                    audio: "z.mp3",
                    ontap: () {
                      _onTapSymbol('z');
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
                        _onTapSymbol('t');
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "d",
                    audio: "d.mp3",
                    ontap: () {
                      _onTapSymbol('d');
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.horizontal * 1.4,
                        top: SizeConfig.vertical * 1,
                        left: SizeConfig.horizontal * 3),
                    child: KeyboardLayout(
                      symbol: "r",
                      audio: "r.mp3",
                      ontap: () {
                        _onTapSymbol('r');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.vertical * 1),
                    child: KeyboardLayout(
                      symbol: "l",
                      audio: "l.mp3",
                      ontap: () {
                        _onTapSymbol('l');
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
                        _onTapSymbol('ɪ');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: SizeConfig.horizontal * 1),
                    child: KeyboardLayout(
                      symbol: "ʌ",
                      audio: "v2.mp3",
                      ontap: () {
                        _onTapSymbol('ʌ');
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "ʊ",
                    audio: "u2.mp3",
                    ontap: () {
                      _onTapSymbol('ʊ');
                    },
                  ),
                ],
              ),
            ),

            // TODO : BARIS 3
            Container(
              padding: EdgeInsets.only(left: SizeConfig.horizontal *1),
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
                                _onTapSymbol('ʃ');
                              },
                            ),
                          ),
                          KeyboardLayout(
                            symbol: "ʒ",
                            audio: "3.mp3",
                            ontap: () {
                              _onTapSymbol('ʒ');
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
                                _onTapSymbol('θ');
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
                                _onTapSymbol('ð');
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
                            _onTapSymbol('h');
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
                        _onTapSymbol('k');
                      },
                    ),
                  ),
                  KeyboardLayout(
                    symbol: "g",
                    audio: "g.mp3",
                    ontap: () {
                      _onTapSymbol('g');
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
                                _onTapSymbol('w');
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
                                _onTapSymbol('j');
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
                                _onTapSymbol('m');
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
                                _onTapSymbol('n');
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
                            _onTapSymbol('ŋ');
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
                                left: SizeConfig.horizontal * 3.7,
                                right: SizeConfig.horizontal * 1),
                            child: KeyboardLayout(
                              symbol: "e",
                              audio: "e.mp3",
                              ontap: () {
                                _onTapSymbol('e');
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
                                _onTapSymbol('ə');
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.horizontal * 1),
                            child: KeyboardLayout(
                              symbol: "æ",
                              audio: "eponi.mp3",
                              ontap: () {
                                _onTapSymbol('æ');
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.vertical * 0.5,
                            left: SizeConfig.horizontal * 2),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.horizontal * 0.8),
                              child: KeyboardLayout(
                                symbol: "ɑ",
                                audio: "a.mp3",
                                ontap: () {
                                  _onTapSymbol('ɑ');
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.horizontal * 1),
                              child: KeyboardLayout(
                                symbol: "ɔ",
                                audio: "c2.mp3",
                                ontap: () {
                                  _onTapSymbol('ɔ');
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.horizontal * 1),
                              child: KeyboardLayout(
                                symbol: "ɚ",
                                audio: "ebuntut.mp3",
                                ontap: () {
                                  _onTapSymbol('ɚ');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.vertical * 0.6,
                          left: SizeConfig.horizontal * 5,
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  right: SizeConfig.horizontal * 1),
                              child: KeyboardLayout(
                                symbol: "ɝ",
                                audio: "3buntut.mp3",
                                ontap: () {
                                  _onTapSymbol('ɝ');
                                },
                              ),
                            ),
                            _buildButton(
                                icon: Icons.backspace,
                                color: Palete.red,
                                padding: EdgeInsets.only(
                                  top: SizeConfig.vertical * 0.6,
                                  bottom: SizeConfig.vertical * 0.6,
                                  left: SizeConfig.horizontal * 2,
                                  right: SizeConfig.horizontal * 2.5,
                                )),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: SizeConfig.horizontal * 2,
                right: SizeConfig.horizontal * 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  _buildButton(
                      text: "Done",
                      color: Palete.blue,
                      padding: EdgeInsets.only(
                        top: SizeConfig.vertical * 1,
                        bottom: SizeConfig.vertical * 1,
                        left: SizeConfig.horizontal * 2,
                        right: SizeConfig.horizontal * 2.5,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
          {String text,
          IconData icon,
          Color color,
          EdgeInsetsGeometry padding}) =>
      QuizButton(
        text: text,
        icon: icon,
        color: color,
        onTap: () => icon != null ? _onTapBackspace() : _onTapSymbol(text),
        padding: padding,
      );
}

class QuizButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final IconData icon;
  final Color color;
  final EdgeInsetsGeometry padding;

  const QuizButton({
    Key key,
    this.text,
    this.onTap,
    this.icon,
    this.color,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(5.0),
      color: color ?? Color(0xFF4A4A4A),
      child: InkWell(
        onTap: onTap,
        child: FittedBox(
          child: Padding(
            padding: padding,
            child: icon != null
                ? Icon(
                    icon,
                    size: SizeConfig.horizontal * 6,
                    color: Colors.white,
                  )
                : Text(
                    text,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.horizontal * 4,
                        fontFamily: Palete.cabinSemiBold),
                  ),
          ),
        ),
      ),
    );
  }
}
