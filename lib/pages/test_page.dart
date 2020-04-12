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
  AudioPlayer _player;
  Duration audioCount;
  int _seconds = 16;
  int _soundSecond = 3;
  Timer _timer;
  Timer _timerSound;
  Duration duration = new Duration(seconds: 1);
  Duration duration1 = new Duration(seconds: 1);
  
  @override
  void initState() {
    timer();
    soundTimer();
    _seconds = 16;
    _soundSecond = 3;
    super.initState();
    _player = AudioPlayer();
    _player.setAsset(widget.question.pathAudio);
  }

  // void nextQuestion() {
  //   setState(() {page = page + 1;});
  //   _seconds = 16;
  //   timer();
  // }

  @override
  void dispose() { 
    _player.dispose();
    _timer.cancel();
    _timerSound.cancel();
    super.dispose();
  }

  void timer() async {
    _timer = Timer.periodic(
      duration,
      (Timer timer) {
        setState(() {
          if (_seconds < 2) {
            timer.cancel();
            controller.nextPage(duration: Duration(milliseconds: 1), curve: Curves.linear);
          } else {
            setState(() {
              _seconds -= 1;
            });
          }
        });
      },
    );
  }

   void soundTimer() async {
    _timerSound = Timer.periodic(
      duration1,
      (Timer timer) {
        setState(() {
          if (_soundSecond < 1) {
            _player.play();
            timer.cancel();
          } else {
            setState(() {
              _soundSecond -= 1;
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
        StreamBuilder<FullAudioPlaybackState>(
                stream: _player.fullPlaybackStateStream,
                builder: (context, snapshot) {
                  final fullState = snapshot.data;
                  final state = fullState?.state;
                  final buffering = fullState?.buffering;
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (state == AudioPlaybackState.connecting ||
                          buffering == true)
                        Container(
                          margin: EdgeInsets.all(2.0),
                          width: 2.0,
                          height: 2.0,
                          child: CircularProgressIndicator(),
                        )
                      else if (state == AudioPlaybackState.playing)
                        IconButton(
                          icon: Icon(Icons.volume_up),
                          iconSize: 34.0,
                          onPressed: null,
                        )
                      else
                        IconButton(
                          icon: Icon(Icons.volume_mute),
                          iconSize: 34.0,
                          onPressed: null,
                        ),
                    ],
                  );
                },
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
                              elevation: 0,
                              labelPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              selectedShadowColor: Colors.white,
                              shadowColor: Colors.white,
                              selectedColor: Colors.indigo[900],
                              backgroundColor: Colors.white,
                              pressElevation: 0,
                              label: Container(
                                width: 250,
                                decoration: BoxDecoration(
                                ),
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
        Container(
          width: 250,
          decoration:
              BoxDecoration(border: Border.all(), color: Colors.indigo[900]),
          child: FlatButton(
            color: Colors.indigo[800],
            child: Text(
              widget.question.order == 35 ? 'Bitir' :
              'Sonraki',
              style: paragraphText,
            ),
            onPressed: !isClicked
                ? null
                : widget.title == 'DİKKATLİCE  DİNLEYİN '
                    ? () {
                      controller.nextPage(duration: Duration(milliseconds: 1), curve: Curves.linear);
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
                        controller.nextPage(duration: Duration(milliseconds: 1), curve: Curves.linear);
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
