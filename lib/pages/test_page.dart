import 'dart:async';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
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
  bool isClicked = false;

  Color colortoshow = Colors.indigoAccent;
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;
  int i = 1;
  // extra varibale to iterate
  int j = 1;
  int timer = 13;
  String showtimer = "13";
  bool canceltimer = false;

  static const timeout = const Duration(seconds: 3);
  static const ms = const Duration(milliseconds: 1);

  startTimeout([int milliseconds]) {
    var duration = milliseconds == null ? timeout : ms * milliseconds;
    return new Timer(duration, handleTimeout);
  }

  @override
  void initState() {
    super.initState();
    // startTimeout(12000);
    starttimer();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer == 11) {
          loadMusic();
        }
        if (timer < 1) {
          t.cancel();
          nextquestion();
        } else if (canceltimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        showtimer = timer.toString();
      });
    });
  }

  void nextquestion() {
    canceltimer = false;
    timer = 13;
    controller.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    starttimer();
  }

  AudioPlayer advancedPlayer;
  Future loadMusic() async {
    advancedPlayer = await AudioCache().play(widget.question.pathAudio);
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          title: Text(widget.title == 'DİKKATLİCE  DİNLEYİN '
              ? 'ALIŞTIRMA - ${widget.question.order}/35'
              : 'TEST - ${widget.question.order}/35'),
          backgroundColor: Colors.indigo[900],
          elevation: 0,
          leading: Icon(
            Icons.not_interested,
            color: Colors.transparent,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          _buildTestArea(),
        ],
      ),
    );
  }

  Column _buildTestArea() {
    return Column(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Center(
              child: Text(
                widget.title,
                style: warningText,
              ),
            )),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Center(
              child: Text(
                widget.question.title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            )),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
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
                                color: selectedChoices
                                        .contains(widget.question.answer[index])
                                    ? Colors.indigo[900]
                                    : Colors.white),
                            child: ChoiceChip(
                              labelPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              selectedShadowColor: Colors.white,
                              shadowColor: Colors.white,
                              selectedColor: Colors.indigo[900],
                              backgroundColor: Colors.white10,
                              label: Container(
                                width: 250,
                                child: Text(
                                  widget.question.answer[index].title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: selectedChoices.contains(
                                              widget.question.answer[index])
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                              selected: selectedChoices
                                  .contains(widget.question.answer[index]),
                              onSelected: (val) {
                                setState(() {
                                  isClicked = true;
                                  selectedChoices.contains(
                                          widget.question.answer[index])
                                      ? selectedChoices
                                          .remove(widget.question.answer[index])
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
                                  ? Colors.indigo[900]
                                  : Colors.white,
                            ),
                            child: FlatButton(
                              color: selectedChoiceButton ==
                                      widget.question.answer[index].title
                                  ? Colors.indigo[900]
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
                                  setState(() {
                                    isClicked = true;
                                  });
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
        Text(
          showtimer,
          style: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.w700,
            fontFamily: 'Times New Roman',
          ),
        ),
        Container(
          width: 250,
          decoration:
              BoxDecoration(border: Border.all(), color: Colors.indigo[900]),
          child: FlatButton(
            color: Colors.indigo[800],
            child: Text(
              'Sonraki',
              style: paragraphText,
            ),
            onPressed: !isClicked
                ? null
                : widget.title == 'DİKKATLİCE  DİNLEYİN '
                    ? () {
                        controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);

                        print('===============================');
                        print('both left score : ${user.getBothLeftScore}');
                        print('both right score : ${user.getBothRightScore}');
                        print('left score : ${user.getLeftScore}');
                        print('right score : ${user.getRightScore}');
                      }
                    : () {
                        setState(() {
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
                            if (selectedChoices.length >= 1) {
                              if (selectedChoices[0].value == 1) {
                                if (selectedChoices[0].side == 0) {
                                  user.setBothLeftScore =
                                      user.getBothLeftScore + 10.0;
                                } else {
                                  user.setBothRightScore =
                                      user.getBothRightScore + 10.0;
                                }
                              }
                              if (selectedChoices[1].value == 1) {
                                if (selectedChoices[1].side == 0) {
                                  user.setBothLeftScore =
                                      user.getBothLeftScore + 10.0;
                                } else {
                                  user.setBothRightScore =
                                      user.getBothRightScore + 10.0;
                                }
                              }
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
                        });
                      },
          ),
        ),
      ],
    );
  }
}
