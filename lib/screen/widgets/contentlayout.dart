import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';

class ContentLayout extends StatelessWidget {
  final String symbol;
  final String gif;
  final String audio;
  final bool visible;
  final AudioCache player = AudioCache(prefix: 'audio/');

  ContentLayout({Key key, this.symbol, this.gif, this.audio, this.visible})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Visibility(
      visible: visible,
      child: Container(
        decoration: BoxDecoration(
            color: Palete.bgGrey,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            )),
        child: ListView(
          padding: EdgeInsets.only(
            left: SizeConfig.horizontal * 3,
            right: SizeConfig.horizontal * 3,
          ),
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(
                          left: SizeConfig.horizontal * 5,
                          right: SizeConfig.horizontal * 5,
                          top: SizeConfig.vertical *1,
                          bottom: SizeConfig.vertical *1,
                          
                        ),
                        margin: EdgeInsets.only(
                          left: SizeConfig.horizontal * 5,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Palete.borderGrey,
                        )),
                        child: Text(
                          symbol,
                          style: TextStyle(fontSize: SizeConfig.horizontal * 7),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.horizontal * 2,
                            top: SizeConfig.vertical * 1),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(18),
                            child: Image(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              height: SizeConfig.horizontal * 18,
                              width: SizeConfig.horizontal * 18,
                              image: AssetImage(
                                Palete.playButton,
                              ),
                            ),
                            onTap: () {
                              player.play(audio);
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          width: SizeConfig.horizontal * 30,
                          image: AssetImage(gif),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: SizeConfig.vertical * 1,
                        left: SizeConfig.horizontal * 3,
                        right: SizeConfig.horizontal * 3),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                    ),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
