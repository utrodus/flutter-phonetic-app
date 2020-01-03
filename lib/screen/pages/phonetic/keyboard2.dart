import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/widgets/keyboardlayout.dart';
import 'package:provider/provider.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/pages/state/symbol.dart';

Widget keyBoard2(BuildContext context, player, visible, onTap) {
  SizeConfig().init(context);
  return Visibility(
    visible: visible,
    child: Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
             Container(
              padding: EdgeInsets.only(
                top: SizeConfig.vertical * 0.5,
                right: SizeConfig.vertical * 3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: onTap,
                      child: Container(
                        padding: EdgeInsets.only(
                          top: SizeConfig.vertical * 0.5,
                          bottom: SizeConfig.vertical * 0.5,
                          right: SizeConfig.horizontal * 2.5,
                          left: SizeConfig.horizontal * 2.5,
                        ),
                        decoration: BoxDecoration(
                            color: Palete.keyboardNext,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Prev",
                                style: TextStyle(
                                  color: Palete.white,
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            

            
          ],
        ),
      ),
    ),
  );
}
