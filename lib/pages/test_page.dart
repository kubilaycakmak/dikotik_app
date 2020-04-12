import 'dart:async';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:dikotik_app/data/question.dart';
import 'package:dikotik_app/pages/style/text_style.dart';

import 'get_information_page.dart';
import 'test_field_page.dart';

class TestPage extends StatefulWidget {
  final String title;
  final question;
  final int index;

  const TestPage({Key key, this.title, this.question, this.index})
      : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage>
    with AutomaticKeepAliveClientMixin<TestPage> {
  bool isSelected = false;
  List<Answer> selectedChoices = List();
  String selectedChoiceButton = '';
  double selectedChoiceValueButton = 0;
  bool isClicked = false;
  AudioPlayer audioPlayer = AudioPlayer();
  Duration audioCount;
  int _seconds = 16;
  Timer _timer;
  Duration duration = new Duration(seconds: 1);

  @override
  void initState() {
    audioPlayer.setAsset(widget.question.pathAudio);
    print(widget.question.pathAudio);
    // audioPlayer.setAsset(widget.question.pathAudio);
    timer();
    super.initState();
  }

  void nextQuestion() {
    _seconds = 16;
    controller.nextPage(duration: Duration(seconds: 1), curve: Curves.ease);
    timer();
  }

  void timer() async {
    _timer = Timer.periodic(
      duration,
      (Timer timer) {
        setState(() {
          if (_seconds == 13) {
            audioPlayer.play();
          }
          if (_seconds < 1) {
            timer.cancel();
            nextQuestion();
          } else {
            setState(() {
              _seconds -= 1;
            });
          }
        });
      },
    );
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  Text _buildCountDown(BuildContext context) {
    int seconds = _seconds;
    String secondsString = seconds.toString().padLeft(2, '0');

    return Text(
      'Süre : $secondsString',
      style: TextStyle(
          color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  @override
  void dispose() {
    print('sayfadan cikti');
    super.dispose();
    print('sayfadan cikti');
    _timer.cancel();
    audioPlayer.pause();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
                                        .contains(widget.question.answer)
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
                                  isClicked = true;
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
        _buildCountDown(context),
        // Text(
        //   showtimer,
        //   style: TextStyle(
        //     fontSize: 35.0,
        //     fontWeight: FontWeight.w700,
        //     fontFamily: 'Times New Roman',
        //   ),
        // ),
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
                        nextQuestion();
                        print('===============================');
                        print('both left score : ${user.getBothLeftScore}');
                        print('both right score : ${user.getBothRightScore}');
                        print('left score : ${user.getLeftScore}');
                        print('right score : ${user.getRightScore}');
                      }
                    : () {
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
                        nextQuestion();
                        // controller.nextPage(
                        //     duration: Duration(milliseconds: 500),
                        //     curve: Curves.easeIn);
                        print('===============================');
                        print('both left score : ${user.getBothLeftScore}');
                        print('both right score : ${user.getBothRightScore}');
                        print('left score : ${user.getLeftScore}');
                        print('right score : ${user.getRightScore}');
                      },
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => false;
}
