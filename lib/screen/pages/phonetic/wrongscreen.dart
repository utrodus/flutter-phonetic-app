import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';

class Wrong extends StatelessWidget {
  final List symbol;
  final List gambar;
  final String currentSymbol;
  Wrong({
    Key key,
    this.symbol,
    this.gambar,
    this.currentSymbol,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Palete.blueGrey,
      appBar: appBar(context, judul: "Mispronounciation"),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: SizeConfig.vertical * 4,
          left: SizeConfig.horizontal * 4,
          right: SizeConfig.horizontal * 4,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Palete.white, borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.only(
              top: SizeConfig.vertical * 4,
              left: SizeConfig.horizontal * 4,
              right: SizeConfig.horizontal * 4,
              bottom: SizeConfig.vertical * 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(bottom: SizeConfig.vertical * 5),
                  padding: EdgeInsets.only(
                    top: SizeConfig.vertical * 1,
                    bottom: SizeConfig.vertical * 1,
                    right: SizeConfig.horizontal * 4,
                    left: SizeConfig.horizontal * 4,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Palete.borderGrey)),
                  child: Text(
                    currentSymbol ?? "",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.horizontal * 5),
                  )),
              // Text(
              //   kalimat ?? "",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     letterSpacing: 1.5,
              //     fontSize: SizeConfig.horizontal * 7,
              //     fontFamily: Palete.cabinMedium,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
