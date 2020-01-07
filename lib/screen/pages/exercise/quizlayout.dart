import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:phono/screen/pages/state/quiz.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/quizkeyboard.dart';
import 'package:provider/provider.dart';

class QuizLayout extends StatelessWidget {
  final FocusNode _node = FocusNode();

  final _notifier = ValueNotifier<String>("");

  KeyboardActionsConfig _buildConfig(
    BuildContext context,
  ) {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.grey[200],
      nextFocus: true,
      actions: [
        KeyboardAction(
          focusNode: _node,
          displayActionBar: false,
          footerBuilder: (_) => QuizKeyboard(
            focusNode: _node,
            notifier: _notifier,
          ),
        ),
      ],
    );
  }

  QuizLayout({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var quiz = Provider.of<Quiz>(context);

    SizeConfig().init(context);
    return KeyboardActions(
      config: _buildConfig(context),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Palete.pink,
                          boxShadow: [
                            new BoxShadow(
                                color: Palete.shadowBlue,
                                offset: new Offset(0.0, 3.5),
                                spreadRadius: 0.1,
                                blurRadius: 3)
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(
                        top: SizeConfig.vertical * 1.5,
                        bottom: SizeConfig.vertical * 1.5,
                        left: SizeConfig.horizontal * 3,
                        right: SizeConfig.horizontal * 3,
                      ),
                      child: Text(
                        "1/10",
                        style: TextStyle(
                            color: Palete.white,
                            fontSize: SizeConfig.horizontal * 5,
                            fontFamily: Palete.cabinMedium),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Palete.white,
                          boxShadow: [
                            new BoxShadow(
                                color: Palete.shadowBlue,
                                offset: new Offset(0.0, 3.5),
                                spreadRadius: 0.1,
                                blurRadius: 3)
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(
                        top: SizeConfig.vertical * 1.5,
                        bottom: SizeConfig.vertical * 1.5,
                        left: SizeConfig.horizontal * 3,
                        right: SizeConfig.horizontal * 3,
                      ),
                      child: Text(
                        "Score : 0",
                        style: TextStyle(
                            color: Color.fromRGBO(46, 85, 144, 1),
                            fontSize: SizeConfig.horizontal * 5,
                            fontFamily: Palete.cabinMedium),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                  top: SizeConfig.vertical * 6,
                  left: SizeConfig.horizontal * 3,
                ),
                child: Text(
                  "Resign",
                  style: TextStyle(
                      fontSize: SizeConfig.horizontal * 8,
                      fontFamily: Palete.cabinSemiBold,
                      color: Color.fromRGBO(41, 86, 127, 1)),
                ),
              ),
              KeyboardCustomInput<String>(
                focusNode: _node,
                height: 65,
                notifier: _notifier,
                builder: (context, val, hasFocus) {
                  return Container(
                    alignment: Alignment.center,
                    child: Text(
                      val.isEmpty ? "Type the Answer ..." : val,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  );
                },
              ),
            ],
          ),
      ),
    );
    // return Container(
    //   child: SingleChildScrollView(
    //     padding: EdgeInsets.only(
    //       top: SizeConfig.vertical * 2.5,
    //       left: SizeConfig.horizontal * 4.5,
    //       right: SizeConfig.horizontal * 4.5,
    //     ),
    //     child: Column(
    //       children: <Widget>[
    //         Container(
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: <Widget>[
    //               Container(
    //                 decoration: BoxDecoration(
    //                     color: Palete.pink,
    //                     boxShadow: [
    //                       new BoxShadow(
    //                           color: Palete.shadowBlue,
    //                           offset: new Offset(0.0, 3.5),
    //                           spreadRadius: 0.1,
    //                           blurRadius: 3)
    //                     ],
    //                     borderRadius: BorderRadius.circular(10)),
    //                 padding: EdgeInsets.only(
    //                   top: SizeConfig.vertical * 1.5,
    //                   bottom: SizeConfig.vertical * 1.5,
    //                   left: SizeConfig.horizontal * 3,
    //                   right: SizeConfig.horizontal * 3,
    //                 ),
    //                 child: Text(
    //                   "1/10",
    //                   style: TextStyle(
    //                       color: Palete.white,
    //                       fontSize: SizeConfig.horizontal * 5,
    //                       fontFamily: Palete.cabinMedium),
    //                 ),
    //               ),
    //               Container(
    //                 decoration: BoxDecoration(
    //                     color: Palete.white,
    //                     boxShadow: [
    //                       new BoxShadow(
    //                           color: Palete.shadowBlue,
    //                           offset: new Offset(0.0, 3.5),
    //                           spreadRadius: 0.1,
    //                           blurRadius: 3)
    //                     ],
    //                     borderRadius: BorderRadius.circular(10)),
    //                 padding: EdgeInsets.only(
    //                   top: SizeConfig.vertical * 1.5,
    //                   bottom: SizeConfig.vertical * 1.5,
    //                   left: SizeConfig.horizontal * 3,
    //                   right: SizeConfig.horizontal * 3,
    //                 ),
    //                 child: Text(
    //                   "Score : 0",
    //                   style: TextStyle(
    //                       color: Color.fromRGBO(46, 85, 144, 1),
    //                       fontSize: SizeConfig.horizontal * 5,
    //                       fontFamily: Palete.cabinMedium),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           alignment: Alignment.centerLeft,
    //           margin: EdgeInsets.only(
    //             top: SizeConfig.vertical * 6,
    //             left: SizeConfig.horizontal * 3,
    //           ),
    //           child: Text(
    //             "Resign",
    //             style: TextStyle(
    //                 fontSize: SizeConfig.horizontal * 8,
    //                 fontFamily: Palete.cabinSemiBold,
    //                 color: Color.fromRGBO(41, 86, 127, 1)),
    //           ),
    //         ),

    //       ],
    //     ),
    //   ),
    // );
  }
}
