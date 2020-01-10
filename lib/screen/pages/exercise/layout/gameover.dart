import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/state/quiz.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/appbar.dart';
import 'package:provider/provider.dart';

class GameOver extends StatelessWidget {
  final String title;
  final Function ontap;
  GameOver({Key key, this.title, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var quiz = Provider.of<Quiz>(context);
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Palete.bgAppbar,
      appBar: appBar(context, judul: title, elevation: 0),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: SizeConfig.vertical * 4),
                child: SvgPicture.asset(
                  'assets/img/games.svg',
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: SizeConfig.vertical * 1.7),
                child: Text(
                  "Game Over",
                  style: TextStyle(
                      color: Palete.white,
                      fontFamily: Palete.cabinSemiBold,
                      fontSize: SizeConfig.horizontal * 10),
                ),
              ),
              Text(
                "Score : ${quiz.getCurrentScore}",
                style: TextStyle(
                    color: Palete.white,
                    fontFamily: Palete.cabinRegular,
                    fontSize: SizeConfig.horizontal * 7),
              ),
              Container(
                margin: EdgeInsets.only(top: SizeConfig.vertical * 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: SizeConfig.horizontal * 4),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                mainRoute, (Route<dynamic> route) => false);
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                              top: SizeConfig.vertical * 0.6,
                              bottom: SizeConfig.vertical * 0.6,
                              left: SizeConfig.horizontal * 3.8,
                              right: SizeConfig.horizontal * 3.8,
                            ),
                            decoration: BoxDecoration(
                                color: Palete.pink,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.home,
                              color: Palete.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: SizeConfig.horizontal * 4),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: ontap,
                          child: Container(
                            padding: EdgeInsets.only(
                              top: SizeConfig.vertical * 0.6,
                              bottom: SizeConfig.vertical * 0.6,
                              left: SizeConfig.horizontal * 3.8,
                              right: SizeConfig.horizontal * 3.8,
                            ),
                            decoration: BoxDecoration(
                                color: Palete.pink,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.refresh,
                              color: Palete.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

