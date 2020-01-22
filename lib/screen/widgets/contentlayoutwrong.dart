import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';

class ContentLayoutWrong extends StatelessWidget {
  final String symbol;
  final bool visible;
  final bool viewSifat;
  final bool viewImg;
  final Widget content;
  final String img;
  final String sifat;

  ContentLayoutWrong({
    Key key,
    this.symbol,
    this.visible,
    this.content,
    this.img,
    this.sifat,
    this.viewSifat, this.viewImg,
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: SizeConfig.vertical * 0.8,
                        bottom: SizeConfig.vertical * 0.8,
                        left: SizeConfig.horizontal * 3.8,
                        right: SizeConfig.horizontal * 3.8,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Palete.borderGrey),
                      ),
                      child: Text(symbol ?? "",
                          style:
                              TextStyle(fontSize: SizeConfig.horizontal * 6)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: SizeConfig.horizontal * 15),
                      width: SizeConfig.horizontal * 34,
                      child: Visibility(
                        visible: viewImg ?? true,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(img),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Visibility(
                      visible: viewSifat ?? false,
                      child: Container(
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
