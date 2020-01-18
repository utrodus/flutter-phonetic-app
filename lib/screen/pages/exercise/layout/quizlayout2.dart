import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:phono/screen/pages/state/quiz.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:provider/provider.dart';

class QuizLayout2 extends StatefulWidget {
  final int noQuiz;
  final Function navigation;
  QuizLayout2({Key key, this.noQuiz, this.navigation}) : super(key: key);

  @override
  _QuizLayout2State createState() => _QuizLayout2State();
}

class _QuizLayout2State extends State<QuizLayout2> {
  bool wrong;
  bool next;
  bool check;

  @override
  void initState() {
    super.initState();
    wrong = false;
    next = false;
    check = true;
  }

  String answer;
  final GlobalKey<FormBuilderState> _quizKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    var quiz = Provider.of<Quiz>(context);

    SizeConfig().init(context);
    return Container(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
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
                      "${widget.noQuiz + 1}/10",
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
                      "Score : ${quiz.getCurrentScore}",
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
                "${quiz.getCurrentShuffle[widget.noQuiz][0]}",
                style: TextStyle(
                    decorationStyle: TextDecorationStyle.dashed,
                    decoration: TextDecoration.underline,
                    letterSpacing: 4.5,
                    fontSize: SizeConfig.horizontal * 8,
                    color: Color.fromRGBO(41, 86, 127, 1)),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.vertical * 4,
                    bottom: SizeConfig.vertical * 4),
                padding: EdgeInsets.only(
                  left: SizeConfig.horizontal * 3,
                  right: SizeConfig.horizontal * 3,
                ),
                child: FormBuilder(
                  key: _quizKey,
                  child: FormBuilderTextField(
                    autofocus: true,
                    style: TextStyle(
                      fontSize: SizeConfig.vertical * 3,
                    ),
                    keyboardType: TextInputType.text,
                    attribute: "answer",
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        top: SizeConfig.vertical * 2,
                        bottom: SizeConfig.vertical * 2,
                        left: SizeConfig.horizontal * 3,
                        right: SizeConfig.horizontal * 3,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    validators: [
                      FormBuilderValidators.required(),
                    ],
                  ),
                )),
            Row(
              children: <Widget>[
                Visibility(
                  visible: wrong,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: SizeConfig.horizontal * 5,
                      right: SizeConfig.horizontal * 3,
                    ),
                    child: Text(
                      quiz.getCurrentShuffle[widget.noQuiz][1],
                      style: TextStyle(
                          color: Palete.red,
                          fontSize: SizeConfig.horizontal * 5,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Visibility(
                        visible: next,
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: SizeConfig.horizontal * 3.5),
                          child: FlatButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            color: Palete.blue,
                            onPressed: () {
                              widget.navigation();
                            },
                            child: Container(
                              decoration: BoxDecoration(boxShadow: [
                                new BoxShadow(
                                    color: Palete.shadowBlue,
                                    offset: new Offset(0.0, 3.5),
                                    spreadRadius: 0.1,
                                    blurRadius: 3)
                              ], borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.only(
                                top: SizeConfig.vertical * 1.5,
                                bottom: SizeConfig.vertical * 1.5,
                              ),
                              child: Text(
                                "Next",
                                style: TextStyle(
                                    color: Palete.white,
                                    fontSize: SizeConfig.horizontal * 5,
                                    fontFamily: Palete.cabinMedium),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: check,
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: SizeConfig.horizontal * 3.5),
                          child: FlatButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                             color: Color.fromRGBO(224, 157, 0, 1),
                            onPressed: () {
                              _quizKey.currentState.save();

                              if (_quizKey
                                  .currentState.value['answer'].isNotEmpty) {
                                if (quiz.getCurrentShuffle[widget.noQuiz][1]
                                    .contains(_quizKey
                                        .currentState.value['answer'])) {
                                  quiz.addScore();
                                  widget.navigation();
                                  check = false;
                                  next = true;
                                } else {
                                  setState(() {
                                    wrong = true;
                                    check = false;
                                    next = true;
                                  });
                                }
                              } else {
                                print("kosong");
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.only(
                                top: SizeConfig.vertical * 1.5,
                                bottom: SizeConfig.vertical * 1.5,
                              ),
                              child: Text(
                                "Check",
                                style: TextStyle(
                                    color: Palete.white,
                                    fontSize: SizeConfig.horizontal * 5,
                                    fontFamily: Palete.cabinMedium),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
