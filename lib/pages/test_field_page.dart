import 'package:dikotik_app/pages/result_page.dart';
import 'package:dikotik_app/pages/warning_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dikotik_app/data/numbers.dart';
import 'package:dikotik_app/data/question.dart';
import 'package:dikotik_app/pages/style/background.dart';
import 'package:dikotik_app/pages/widgets/bloc/timer_bloc.dart';
import 'package:dikotik_app/pages/widgets/ticker.dart';
import 'package:just_audio/just_audio.dart';
import 'get_information_page.dart';

int pageNumber = 0;

class TestFieldPage extends StatefulWidget {
  final List<Question> questions;

  const TestFieldPage({
    Key key,
    @required this.questions,
  }) : super(key: key);
  @override
  _TestFieldPageState createState() => _TestFieldPageState();
}

class _TestFieldPageState extends State<TestFieldPage> {
  @override
  void dispose() {
    // controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(109, 234, 255, 1),
        accentColor: Color.fromRGBO(72, 74, 126, 1),
        brightness: Brightness.dark,
      ),
      title: 'Flutter Timer',
      home: BlocProvider(
        create: (context) => TimerBloc(ticker: Ticker()),
        child: Test(
          question: widget.questions,
        ),
      ),
    );
  }
}

PageController controller =
    new PageController(viewportFraction: 1, initialPage: 0, keepPage: false);

class Test extends StatefulWidget {
  final List<Question> question;
  static const TextStyle timerTextStyle = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
  );
  const Test({
    Key key,
    @required this.question,
  }) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  AudioPlayer _player;
  bool isSelected = false;
  List<Answer> selectedChoices = List();
  String selectedChoiceButton = '';
  double selectedChoiceValueButton = 0;
  bool isClicked = false;
  int doubleClick;

  @override
  void initState() {
    setState(() {
      doubleClick = 0;
    });
    _player = new AudioPlayer();
    _player.setAsset(widget.question[0].pathAudio);
    super.initState();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background(),
          PageView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.question.length,
              onPageChanged: (val) {
                if (val >= 34) {
                } else {
                  doubleClick = 0;
                  selectedChoices.length = 0;
                  _player.stop();
                  BlocProvider.of<TimerBloc>(context).add(Reset());
                  BlocProvider.of<TimerBloc>(context).add(Start(duration: 20));
                  print(val);
                }
              },
              controller: controller,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(20),
                  child: ListView(
                    shrinkWrap: false,
                    children: <Widget>[
                      BlocBuilder<TimerBloc, TimerState>(
                        builder: (context, state) {
                          print(state);
                          if (state is Running) {
                            if (state.duration == 16) {
                              _player
                                  .setAsset(widget.question[index].pathAudio);
                              _player.play();
                            }
                            if (state.duration <= 1) {
                              controller.nextPage(
                                  duration: Duration(seconds: 1),
                                  curve: Curves.ease);
                            }
                            if (widget.question[index].order >= 35) {
                              // BlocProvider.of<TimerBloc>(context).add();
                            }
                            return Align(
                              child: Text(
                                'Süre : ${state.duration}',
                                style: timerTextStyle,
                              ),
                            );
                          }
                          if (state is Ready) {
                            return WarningPage();
                          }
                          if (state is Finished) {
                            return ResultPage();
                          }
                          if (state is Pause) {
                            _player.stop();
                            _player.dispose();
                            return ResultPage();
                          }
                          return Container();
                        },
                      ),
                      Align(
                        child: Text(
                          widget.question[index].side == 0
                              ? "- SOL -"
                              : widget.question[index].side == 1
                                  ? "- SAĞ -"
                                  : "- HER İKİSİ -",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        wqNumber[index].title,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Center(
                        child: buildAudioPlayBackStreamBuilder(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, i) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: FloatingActionButton.extended(
                                heroTag: i,
                                backgroundColor: widget.question[index].side !=
                                        2
                                    ? Colors.deepOrange.shade600
                                    : selectedChoices.contains(
                                            widget.question[index].answer[i])
                                        ? Colors.lightBlue.shade900
                                        : Colors.deepOrange.shade600,
                                onPressed: widget.question[index].order >= 35
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ResultPage(),
                                        ))
                                    : widget.question[index].order <= 5
                                        ? () {
                                            print(
                                                '===================== $doubleClick');
                                            if (widget.question[index].side ==
                                                2) {
                                              setState(() {
                                                doubleClick++;
                                              });
                                              if (doubleClick == 2) {
                                                skipAnswer(index);
                                              }
                                            } else {
                                              skipAnswer(index);
                                            }
                                          }
                                        : widget.question[index].side != 2
                                            ? () {
                                                setState(() {
                                                  selectedChoiceButton = widget
                                                      .question[index]
                                                      .answer[i]
                                                      .title;
                                                  selectedChoiceValueButton =
                                                      widget.question[index]
                                                          .answer[i].value;
                                                  checkAnswer(index);
                                                });
                                              }
                                            : () {
                                                print(
                                                    '${selectedChoices.length} ===================');
                                                selectedChoices.contains(widget
                                                        .question[index]
                                                        .answer[i])
                                                    ? selectedChoices.remove(
                                                        widget.question[index]
                                                            .answer[i])
                                                    : selectedChoices.length ==
                                                            1
                                                        ? checkAnswer(index)
                                                        : selectedChoices.add(
                                                            widget
                                                                .question[index]
                                                                .answer[i]);
                                              },
                                label: Text(
                                    widget.question[index].answer[i].title),
                              ),
                            );
                          },
                          itemCount: 5,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        child: Text(
                          '${widget.question[index].order} / ${widget.question.length}',
                          style: TextStyle(fontSize: 18, color: Colors.black38),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                      // Align(child: Text(user.getLeftScore.toString(), style: TextStyle(fontSize: 18, color: Colors.black38),), alignment: Alignment.bottomCenter,),
                    ],
                  ),
                );
              })
          // :
        ],
      ),
    );
  }

  StreamBuilder<FullAudioPlaybackState> buildAudioPlayBackStreamBuilder() {
    return StreamBuilder<FullAudioPlaybackState>(
      stream: _player.fullPlaybackStateStream,
      builder: (context, snapshot) {
        final fullState = snapshot.data;
        final state = fullState?.state;
        final buffering = fullState?.buffering;
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (state == AudioPlaybackState.connecting || buffering == true)
              IconButton(
                icon: Icon(Icons.volume_up),
                iconSize: 34.0,
                onPressed: null,
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
    );
  }

  static const TextStyle timerTextStyle = TextStyle(
    fontSize: 40,
    color: Colors.deepOrange,
    fontWeight: FontWeight.bold,
  );

  skipAnswer(int index) {
    controller.nextPage(duration: Duration(seconds: 1), curve: Curves.ease);
  }

  checkAnswer(int index) {
    if (widget.question[index].side == 0) {
      if (selectedChoiceValueButton == 1.0) {
        user.setLeftScore = user.getLeftScore + 10.0;
      }
    } else if (widget.question[index].side == 1) {
      if (selectedChoiceValueButton == 1.0) {
        user.setRightScore = user.getRightScore + 10.0;
      }
    }
    if (widget.question[index].side == 2) {
      print(selectedChoices.length);
      if (selectedChoices.length > 1) {
        if (selectedChoices[0].value == 1) {
          if (selectedChoices[0].side == 0) {
            user.setBothLeftScore = user.getBothLeftScore + 10.0;
          } else {
            user.setBothRightScore = user.getBothRightScore + 10.0;
          }
        }
        if (selectedChoices[1].value == 1) {
          if (selectedChoices[1].side == 0) {
            user.setBothLeftScore = user.getBothLeftScore + 10.0;
          } else {
            user.setBothRightScore = user.getBothRightScore + 10.0;
          }
        }
      }
    }
    // if(widget.question[index].order == 36){
    //   BlocProvider.of<TimerBloc>(context).add(Pause());
    //   _player.stop();
    // }
    print('===============================');
    print('both left score : ${user.getBothLeftScore}');
    print('both right score : ${user.getBothRightScore}');
    print('left score : ${user.getLeftScore}');
    print('right score : ${user.getRightScore}');
    controller.nextPage(duration: Duration(seconds: 1), curve: Curves.ease);
  }
}
