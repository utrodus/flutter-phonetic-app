import 'package:flutter/material.dart';
import 'package:phono/screen/pages/state/symbol.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/widgets/keyboardlayout.dart';
import 'package:provider/provider.dart';

class KeyboardWrong extends StatelessWidget {
  KeyboardWrong({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var wrongState = Provider.of<Simbol>(context);
    SizeConfig().init(context);
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.only(top: SizeConfig.vertical * 3),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(right: SizeConfig.horizontal * 1.0),
                    child: KeyboardLayout(
                      symbol: "i",
                      ontap: () {
                        wrongState.setCurrentFlex(4);
                        wrongState.setWrongContent(0);
                      },
                    ),
                  ),
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
