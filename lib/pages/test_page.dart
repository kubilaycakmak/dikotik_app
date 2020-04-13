import 'package:dikotik_app/pages/widgets/bloc/timer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:dikotik_app/data/question.dart';
import 'package:dikotik_app/pages/style/text_style.dart';
import 'get_information_page.dart';
import 'test_field_page.dart';
import 'widgets/ticker.dart';

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
  Duration duration = new Duration(seconds: 1);
  Duration duration1 = new Duration(seconds: 1);

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _player.setAsset(widget.question.pathAudio);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
        create: (context) => TimerBloc(ticker: Ticker()),
        child: Stack(
          children: <Widget>[
            ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Center(
                  child: BlocBuilder<TimerBloc, TimerState>(
                    builder: (context, state) {
                      final String secondsStr = (state.duration % 60)
                          .floor()
                          .toString()
                          .padLeft(2, '0');

                      if(state is Ready){
                        BlocProvider.of<TimerBloc>(context).add(Start(duration: 16));
                      }
                      if(state is Running){
                        return _buildTestArea(state, secondsStr);
                      }
                      if(state is Finished){
                        controller.nextPage(duration: Duration(seconds: 1), curve: Curves.linear);
                        BlocProvider.of<TimerBloc>(context).add(Reset());
                        BlocProvider.of<TimerBloc>(context).add(Start(duration: 16));
                      }
                      return Container();

                      // BlocProvider.of<SearchBloc>(context).onSearchInitiated(searchQuery, 1, 'vertical');
                    },
                  ),
                ),
              ),
            ],
          ),
          ],
        ),
      );
  }

  Widget _buildTestArea(TimerState state, String time) {
    return Column(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Center(
              child: Text(widget.title == 'DİKKATLİCE  DİNLEYİN '
              ? 'ALIŞTIRMA - ${widget.question.order}/35'
              : 'TEST - ${widget.question.order}/35', style: warningText,),
            )),Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Center(
              child: Text(
                widget.title,
                style: warningText,
              ),
            )),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Center(
              child: Text(
                widget.question.title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )),
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
                          padding: EdgeInsets.all(0.0),
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
          padding: const EdgeInsets.symmetric(horizontal: 5),
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
                                color: selectedChoices
                                        .contains(widget.question.answer[index])
                                    ? Colors.transparent
                                    : Colors.transparent),
                            child: FloatingActionButton.extended(
                              elevation: 0,
                              // labelPadding:
                              //     EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                              // selectedShadowColor: Colors.transparent,
                              // shadowColor: Colors.transparent,
                              // selectedColor: Colors.indigo[900],
                              backgroundColor: selectedChoices
                                  .contains(widget.question.answer[index]) ? Colors.white : ThemeData.light().floatingActionButtonTheme.backgroundColor,
                              label: Container(
                                width: 250,
                                child: Text(
                                  widget.question.answer[index].title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: selectedChoices.contains(
                                              widget.question.answer[index])
                                          ? Colors.black
                                          : Colors.white),
                                ),
                              ),
                              
                              // selected: selectedChoices
                              //     .contains(widget.question.answer[index]),
                              onPressed: () {
                                setState(() {
                                  isClicked = true;
                                  selectedChoices.contains(
                                          widget.question.answer[index])
                                      ? selectedChoices
                                          .remove(widget.question.answer[index])
                                      : selectedChoices.length == 1
                                          ? widget.title == 'DİKKATLİCE  DİNLEYİN ' ? skipAnswer() : checkAnswer()
                                          : selectedChoices.add(
                                              widget.question.answer[index]);
                                });
                              },
                              
                            ))
                        : Container(
                            width: 250,
                            decoration: BoxDecoration(
                              color: selectedChoiceButton ==
                                      widget.question.answer[index].title
                                  ? Colors.transparent
                                  : Colors.transparent,
                            ),
                            child: FloatingActionButton.extended(
                              // color: selectedChoiceButton ==
                              //         widget.question.answer[index].title
                              //     ? Colors.indigo[900]
                              //     : Colors.white,
                              backgroundColor: selectedChoiceButton ==
                                      widget.question.answer[index].title
                                  ? Colors.white : ThemeData.light().floatingActionButtonTheme.backgroundColor,
                              label: Text(
                                widget.question.answer[index].title,
                                style: TextStyle(
                                  color: selectedChoiceButton ==
                                          widget.question.answer[index].title
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                              onPressed: widget.title == 'DİKKATLİCE  DİNLEYİN '
                                ? () {
                                  skipAnswer();
                                  }
                                : () {
                                  selectedChoiceButton =
                                      widget.question.answer[index].title;
                                  selectedChoiceValueButton =
                                      widget.question.answer[index].value;
                                checkAnswer();
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
        // _buildCountDown(context)
        Text(
          time,
          style: Test.timerTextStyle,
        )
      ],
    );
  }

  

  skipAnswer(){
    controller.nextPage(duration: Duration(milliseconds: 1), curve: Curves.linear);
  }

  checkAnswer(){
    print('checking');
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
      print(selectedChoices.length);
      if (selectedChoices.length > 1) {
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
    });
    print('===============================');
    print('both left score : ${user.getBothLeftScore}');
    print('both right score : ${user.getBothRightScore}');
    print('left score : ${user.getLeftScore}');
    print('right score : ${user.getRightScore}');
    controller.nextPage(duration: Duration(milliseconds: 1), curve: Curves.linear);
  }

  @override
  bool get wantKeepAlive => false;
}

class Actions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _mapStateToActionButtons(
        timerBloc: BlocProvider.of<TimerBloc>(context),
      ),
    );
  }

  List<Widget> _mapStateToActionButtons({
    TimerBloc timerBloc,
  }) {
    final TimerState currentState = timerBloc.state;
    if (currentState is Ready) {
      return [
        FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () =>
              timerBloc.add(Start(duration: currentState.duration)),
        ),
      ];
    }
    if (currentState is Running) {
      return [
        FloatingActionButton(
          child: Icon(Icons.pause),
          onPressed: () => timerBloc.add(Pause()),
        ),
        FloatingActionButton(
          child: Icon(Icons.replay),
          onPressed: () => timerBloc.add(Reset()),
        ),
      ];
    }
    if (currentState is Paused) {
      return [
        FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () => timerBloc.add(Resume()),
        ),
        FloatingActionButton(
          child: Icon(Icons.replay),
          onPressed: () => timerBloc.add(Reset()),
        ),
      ];
    }
    if (currentState is Finished) {
      return [
        FloatingActionButton(
          child: Icon(Icons.replay),
          onPressed: () => timerBloc.add(Reset()),
        ),
      ];
    }
    return [];
  }
}