import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/router/router.dart';
import 'package:phono/screen/pages/state/symbol.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:provider/provider.dart';

class ContentLayout extends StatelessWidget {
  final String symbol;
  final String sifat;
  final String gif;
  final String twistertext;
  final String audio;
  final String materi;
  final bool visible;
  final List<Widget> listwrongContent;
  final List<Widget> listWrongKeyboard;
  final Widget content;
  final AudioCache player = AudioCache(prefix: 'audio/');
  final GifController controller;
  final int flexWrong;
  final bool isWrong;
  final String wrongRoute;

  ContentLayout({
    Key key,
    this.symbol,
    this.gif,
    this.audio,
    this.visible,
    this.materi,
    this.controller,
    this.sifat,
    this.content,
    this.twistertext,
    this.listwrongContent,
    this.listWrongKeyboard,
    this.flexWrong,
    this.isWrong,
    this.wrongRoute,
  }) : super(key: key);

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
            top: SizeConfig.vertical * 2,
            bottom: SizeConfig.vertical * 2,
            left: SizeConfig.horizontal * 3,
            right: SizeConfig.horizontal * 3,
          ),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Visibility(
                      visible: isWrong ?? false,
                      child: Container(
                        margin:
                            EdgeInsets.only(right: SizeConfig.horizontal * 2),
                        child: Material(
                          // needed
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, wrongRoute,
                                  arguments: WrongArgument(symbol: symbol));
                                  Provider.of<Simbol>(context).setWrongContent(0);
                            }, // needed
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(15.0),
                              child: Image.asset(
                                "assets/img/wrong.jpg",
                                width: SizeConfig.horizontal * 12,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      // needed
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, twister,
                              arguments: TwisterArgument(symbol, twistertext));
                        }, // needed
                        child: Image.asset(
                          "assets/img/tongue.png",
                          width: SizeConfig.horizontal * 12,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: isWrong == false
                          ? SizeConfig.horizontal * 16
                          : SizeConfig.horizontal * 3,
                    ),
                    Container(
                      width: SizeConfig.horizontal * 35,
                      child: GifImage(
                        fit: BoxFit.cover,
                        controller: controller,
                        image: AssetImage(gif),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                          bottom: SizeConfig.horizontal * 1,
                          top: SizeConfig.vertical * 2),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(224, 157, 0, 1),
                          borderRadius: BorderRadius.circular(13)),
                      padding: EdgeInsets.only(
                        top: SizeConfig.vertical * 0.5,
                        bottom: SizeConfig.vertical * 0.5,
                        left: SizeConfig.horizontal * 2,
                        right: SizeConfig.horizontal * 2,
                      ),
                      child: Container(
                        child: Text(
                          sifat ?? "",
                          style: TextStyle(
                              color: Palete.white,
                              fontFamily: Palete.cabinSemiBold,
                              fontSize: SizeConfig.horizontal * 4.3),
                        ),
                      ),
                    ),
                  ],
                ),
                content ?? Container()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget penjelasan(BuildContext context, {String number, text}) {
  return Container(
    padding: EdgeInsets.only(left: SizeConfig.horizontal * 2),
    margin: EdgeInsets.only(top: SizeConfig.vertical * 1.5),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(number ?? ""),
        Flexible(
          flex: 3,
          child: Text(
            text ?? "",
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    ),
  );
}
