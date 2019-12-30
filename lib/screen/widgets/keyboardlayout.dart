import 'package:flutter/material.dart';
import 'package:ipa/screen/style/config.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ipa/screen/style/palete.dart';



class KeyboardLayout extends StatelessWidget {
  final String symbol;
  final String audio;
  final ontap;
  KeyboardLayout({Key key, this.symbol, this.audio, this.ontap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: ontap,
      child: Container(
        
        margin: EdgeInsets.all(SizeConfig.horizontal * 1),
        decoration: BoxDecoration(
            color: Palete.phoneticButton,
            borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.only(
          top: SizeConfig.vertical * 1,
          bottom: SizeConfig.vertical * 1,
          left: SizeConfig.horizontal * 3,
          right: SizeConfig.horizontal * 3,
        ),
        child: Text(
          symbol,
          style: TextStyle(
              color: Palete.white,
              fontFamily: Palete.cabinRegular,
              fontSize: SizeConfig.horizontal * 4.5),
        ),
      ),
    );
  }
}
