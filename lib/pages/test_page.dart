import 'dart:async';

import 'package:dikotik_app/data/question.dart';
import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:dikotik_app/pages/test_field_page.dart';
import 'package:flutter/material.dart';

import 'get_information_page.dart';

class TestPage extends StatefulWidget {
  final String title;
  final Question question;

  const TestPage({Key key, this.title, this.question}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  bool isSelected = false;
  List<Answer> selectedChoices = List();
  String selectedChoiceButton = '';
  double selectedChoiceValueButton = 0;

  static const timeout = const Duration(seconds: 3);
  static const ms = const Duration(milliseconds: 1);

  startTimeout([int milliseconds]) {
    var duration = milliseconds == null ? timeout : ms * milliseconds;
    return new Timer(duration, handleTimeout);
  }

  @override
  void initState() {
    super.initState();
    startTimeout(12000);
  }

  handleTimeout() {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black38,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Color.fromRGBO(0, 40, 77, 1), width: 2)),
          title: Column(
            children: <Widget>[
              Text(
                'Sure bitti',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              RaisedButton(
                onPressed: () {
                  controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                  Navigator.pop(context);
                },
                child: Text('Sonraki soru'),
              )
            ],
          ),
        );
      },
    );
    // controller.nextPage(
    //     duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Center(
                child: Text(
                  widget.title,
                  style: titleText,
                ),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Center(
                child: Text(
                  widget.question.title,
                  textAlign: TextAlign.center,
                  style: paragraphText,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.question.answer.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      widget.question.side == 2
                          ? Container(
                              width: 250,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  color: selectedChoices.contains(
                                          widget.question.answer[index])
                                      ? Colors.teal[300]
                                      : Colors.white),
                              child: ChoiceChip(
                                selectedShadowColor: Colors.white,
                                shadowColor: Colors.white,
                                selectedColor: Colors.teal[300],
                                backgroundColor: Colors.white10,
                                label: Text(
                                  widget.question.answer[index].title,
                                  style: TextStyle(
                                      color: selectedChoices.contains(
                                              widget.question.answer[index])
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                selected: selectedChoices
                                    .contains(widget.question.answer[index]),
                                onSelected: (val) {
                                  setState(() {
                                    selectedChoices.contains(
                                            widget.question.answer[index])
                                        ? selectedChoices.remove(
                                            widget.question.answer[index])
                                        : selectedChoices.length == 2
                                            ? 0
                                            : selectedChoices.add(
                                                widget.question.answer[index]);
                                  });
                                },
                              ))
                          : Container(
                              width: 250,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                color: selectedChoiceButton ==
                                        widget.question.answer[index].title
                                    ? Colors.teal[300]
                                    : Colors.white,
                              ),
                              child: FlatButton(
                                color: selectedChoiceButton ==
                                        widget.question.answer[index].title
                                    ? Colors.teal[300]
                                    : Colors.white,
                                child: Text(
                                  widget.question.answer[index].title,
                                  style: TextStyle(
                                    color: selectedChoiceButton ==
                                            widget.question.answer[index].title
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selectedChoiceButton =
                                        widget.question.answer[index].title;
                                    selectedChoiceValueButton =
                                        widget.question.answer[index].value;
                                  });
                                },
                              ),
                            ),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 250,
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.teal[300]),
            child: FlatButton(
              color: Colors.teal[300],
              child: Text(
                'Sonraki',
                style: paragraphText,
              ),
              onPressed: () {
                if (widget.question.side == 0) {
                  if (selectedChoiceValueButton == 1.0) {
                    user.setLeftScore = user.getLeftScore + 10.0;
                  }
                } else if (widget.question.side == 1) {
                  if (selectedChoiceValueButton == 1.0) {
                    user.setRightScore = user.getRightScore + 10.0;
                  }
                }
                if (widget.question.side == 2) {
                  if (selectedChoices.length == 2) {
                    if (selectedChoices[0].side == 0)
                      user.setBothLeftScore = user.getBothLeftScore + 10.0;
                    if (selectedChoices[0].side == 1)
                      user.setBothRightScore = user.getBothRightScore + 10.0;
                    if (selectedChoices[1].side == 0)
                      user.setBothLeftScore = user.getBothLeftScore + 10.0;
                    if (selectedChoices[1].side == 1)
                      user.setBothRightScore = user.getBothRightScore + 10.0;
                  }
                }
                controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn);

                print('===============================');
                print('both left score : ${user.getBothLeftScore}');
                print('both right score : ${user.getBothRightScore}');
                print('left score : ${user.getLeftScore}');
                print('right score : ${user.getRightScore}');
              },
            ),
          ),
        ],
      ),
    );
  }
}
