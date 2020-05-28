import 'dart:collection';

import 'package:dikotik_app/pages/entry_page.dart';
import 'package:dikotik_app/pages/style/background.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/subjects.dart';
import 'package:volume/volume.dart';

class AudiometryPage extends StatefulWidget {
  @override
  _AudiometryPageState createState() => _AudiometryPageState();
}

class _AudiometryPageState extends State<AudiometryPage> {
  final _volumeSubject = BehaviorSubject.seeded(1.0);
  final _speedSubject = BehaviorSubject.seeded(1.0);
  int question = 1;
  AudioManager audioManager;
  int maxVol, currentVol;
  ShowVolumeUI showVolumeUI = ShowVolumeUI.HIDE;
  String submitButton = "Sonraki ->";
  AudioPlayer _player;
  AudioPlayer _player2;
  AudioPlayer _player3;
  AudioPlayer _player4;
  AudioPlayer _player5;
  AudioPlayer _player6;
  int currentVolume = 5;
  Map<String, Object> createDoc = new HashMap();

  @override
  void initState() {
    super.initState();
    audioManager = AudioManager.STREAM_SYSTEM;
    initAudioStreamType();
    updateVolumes();

    _player = AudioPlayer();
    _player2 = AudioPlayer();
    _player3 = AudioPlayer();
    _player4 = AudioPlayer();
    _player5 = AudioPlayer();
    _player6 = AudioPlayer();
    _player.setAsset("assets/audiometry/250hz.wav").catchError((error) {
      print(error);
    });
    _player2.setAsset("assets/audiometry/500hz.wav").catchError((error) {
      print(error);
    });
    _player3.setAsset("assets/audiometry/1khz.wav").catchError((error) {
      print(error);
    });
    _player4.setAsset("assets/audiometry/2khz.wav").catchError((error) {
      print(error);
    });
    _player5.setAsset("assets/audiometry/4khz.wav").catchError((error) {
      print(error);
    });
    _player6.setAsset("assets/audiometry/8khz.wav").catchError((error) {
      print(error);
    });
  }

  Future<void> initAudioStreamType() async {
    await Volume.controlVolume(AudioManager.STREAM_MUSIC);
  }

  updateVolumes() async {
    // get Max Volume
    maxVol = await Volume.getMaxVol;
    // get Current Volume
    currentVol = await Volume.getVol;
    print(maxVol);
    setState(() {});
  }

  setVol(int i) async {
    await Volume.setVol(i, showVolumeUI: showVolumeUI);
  }

  @override
  void dispose() {
    _player.dispose();
    _player2.dispose();
    _player3.dispose();
    _player4.dispose();
    _player5.dispose();
    _player6.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Container(
          width: 120,
          height: 50,
          child: FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  createDoc['data$question'] = currentVol;

                  print(createDoc);

                  _player.stop();
                  _player2.stop();
                  _player3.stop();
                  _player4.stop();
                  _player5.stop();
                  _player6.stop();
                  if (question == 5) {
                    submitButton = 'Sonuc';
                  }
                  if (question == 6) {
                    submitButton = "Ana Menu";
                  }
                  if (question > 6) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => EntryPage()));
                  }
                  question++;
                });
              },
              label: Text(submitButton)),
        ),
        body: Stack(
          children: [
            Background(),
            Center(
              child: ListView(
                children: [
                  question == 1
                      ? _buildQuestion('250', _player, context)
                      : question == 2
                          ? _buildQuestion('500', _player2, context)
                          : question == 3
                              ? _buildQuestion('1000', _player3, context)
                              : question == 4
                                  ? _buildQuestion('2000', _player4, context)
                                  : question == 5
                                      ? _buildQuestion(
                                          '4000', _player5, context)
                                      : question == 6
                                          ? _buildQuestion(
                                              '8000', _player6, context)
                                          : Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            6,
                                                  ),
                                                  Text(
                                                    'Sonuc',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white54),
                                                  ),
                                                  ListView.builder(
                                                    shrinkWrap: true,
                                                    itemCount: 6,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Center(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Text(
                                                              " Soru ${index + 1}",
                                                              style: TextStyle(
                                                                  fontSize: 25,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .normal,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .white54),
                                                            ),
                                                            Text(
                                                              createDoc[
                                                                      'data${index + 1}']
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  fontSize: 25,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .normal,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .white54),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  )
                                                ],
                                              ),
                                            ),
                  question < 7
                      ? StreamBuilder<double>(
                          stream: _volumeSubject.stream,
                          builder: (context, snapshot) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [_buildYesContainer(), _buildNoButton()],
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildQuestion(
      String title, AudioPlayer player, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
          ),
          Text(
            '${title} HZ',
            style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                color: Colors.white54),
          ),
          SizedBox(
            height: 20,
          ),
          StreamBuilder<FullAudioPlaybackState>(
            stream: player.fullPlaybackStateStream,
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
                      margin: EdgeInsets.all(8.0),
                      width: 64.0,
                      height: 64.0,
                      child: CircularProgressIndicator(),
                    )
                  else if (state == AudioPlaybackState.playing)
                    Container(
                      width: 100,
                      height: 100,
                      child: FloatingActionButton.extended(
                        heroTag: 'stop',
                        elevation: 0,
                        onPressed: player.stop,
                        label: Icon(
                          Icons.stop,
                          color: Colors.white,
                        ),
                      ),
                    )
                  else
                    Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          child: FloatingActionButton.extended(
                            heroTag: 'play',
                            elevation: 0,
                            onPressed: player.play,
                            label: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              );
            },
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            currentVol.toString(),
            style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                color: Colors.white54),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Duyabiliyor musun?',
            style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                color: Colors.white54),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildYesContainer() {
    return (currentVol != null || maxVol != null)
        ? Container(
            width: 100,
            height: 68,
            child: FloatingActionButton.extended(
              elevation: 0,
              heroTag: 'evet',
              onPressed: () {
                setState(
                  () {
                    currentVolume = currentVolume - 1;
                    Volume.setVol(currentVolume);
                    updateVolumes();
                    print(currentVolume);
                    print(currentVol);
                  },
                );
              },
              label: Text('Evet'),
            ),
          )
        : Container();
  }

  Widget _buildNoButton() {
    return (currentVol != null || maxVol != null)
        ? Container(
            width: 100,
            height: 68,
            child: FloatingActionButton.extended(
              elevation: 0,
              heroTag: 'hayir',
              onPressed: () {
                setState(
                  () {
                    currentVolume = currentVolume + 1;
                    Volume.setVol(currentVolume);
                    updateVolumes();
                    print(currentVol);
                  },
                );
              },
              label: Text('Hayır'),
            ),
          )
        : Container();
  }
}

// class AudiometryPage extends StatefulWidget {
//   @override
//   _AudiometryPageState createState() => _AudiometryPageState();
// }

// class _AudiometryPageState extends State<AudiometryPage> {
//   AudioManager audioManager;
//   int maxVol, currentVol;

//   @override
//   void initState() {
//     currentVol = 90;
//     super.initState();
//     initPlatformState();
//     audioPlayer.setAsset("assets/sound/woman/wtestSound.mp3");
//     updateVolumes();
//   }

//   @override
//   void dispose() {
//     audioPlayer.stop();
//     super.dispose();
//   }

//   AudioPlayer audioPlayer = AudioPlayer();

//   Future loadWomanSound() async {
//     // advancedPlayerWoman = await AudioCache().play("sound/$sex/$name.mp3");
//     audioPlayer.setAsset("assets/audiometry/1Khz90db10sn.wav");
//   }

//   Future loadManSound() async {
//     // advancedPlayerWoman = await AudioCache().play("sound/$sex/$name.mp3");
//     audioPlayer.setAsset("assets/sound/man/mtestSound.mp3");
//   }

//   Future<void> initPlatformState() async {
//     await Volume.controlVolume(AudioManager.STREAM_MUSIC);
//   }

//   updateVolumes() async {
//     // get Max Volume
//     maxVol = await Volume.getMaxVol;
//     // get Current Volume
//     currentVol = await Volume.getVol;
//     setState(() {});
//   }

//   setVol(int i) async {
//     await Volume.setVol(i);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Background(),
//           _buildBody(),
//         ],
//       ),
//     );
//   }

//   Widget _buildBody() {
//     return Container(
//       child: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Text(
//               'Audiometry',
//               style: titleText,
//               textAlign: TextAlign.center,
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               FloatingActionButton(
//                   onPressed: () {
//                     setVol(currentVol + 10.toInt());
//                     updateVolumes();
//                   },
//                   child: Text('Evet')),
//               FloatingActionButton(
//                   onPressed: () {
//                     setVol(currentVol - 10.toInt());
//                     updateVolumes();
//                   },
//                   child: Text('Hayir'))
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
class SeekBar extends StatefulWidget {
  final Duration duration;
  final Duration position;
  final ValueChanged<Duration> onChanged;
  final ValueChanged<Duration> onChangeEnd;

  SeekBar({
    @required this.duration,
    @required this.position,
    this.onChanged,
    this.onChangeEnd,
  });

  @override
  _SeekBarState createState() => _SeekBarState();
}

class _SeekBarState extends State<SeekBar> {
  double _dragValue;

  @override
  Widget build(BuildContext context) {
    return Slider(
      min: 0.0,
      max: widget.duration.inMilliseconds.toDouble(),
      value: _dragValue ?? widget.position.inMilliseconds.toDouble(),
      onChanged: (value) {
        setState(() {
          _dragValue = value;
        });
        if (widget.onChanged != null) {
          widget.onChanged(Duration(milliseconds: value.round()));
        }
      },
      onChangeEnd: (value) {
        _dragValue = null;
        if (widget.onChangeEnd != null) {
          widget.onChangeEnd(Duration(milliseconds: value.round()));
        }
      },
    );
  }
}
