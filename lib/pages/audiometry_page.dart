import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/subjects.dart';

class AudiometryPage extends StatefulWidget {
  @override
  _AudiometryPageState createState() => _AudiometryPageState();
}

class _AudiometryPageState extends State<AudiometryPage> {
  final _volumeSubject = BehaviorSubject.seeded(1.0);
  final _speedSubject = BehaviorSubject.seeded(1.0);
  AudioPlayer _player;
  int currentVolume = 50;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _player.setAsset("assets/audiometry/250hz.wav").catchError((error) {
      // catch audio error ex: 404 url, wrong url ...
      print(error);
    });
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Audio Player Demo'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Science Friday"),
              Text("Science Friday and WNYC Studios"),
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
                          margin: EdgeInsets.all(8.0),
                          width: 64.0,
                          height: 64.0,
                          child: CircularProgressIndicator(),
                        )
                      else if (state == AudioPlaybackState.playing)
                        IconButton(
                          icon: Icon(Icons.pause),
                          iconSize: 64.0,
                          onPressed: _player.pause,
                        )
                      else
                        IconButton(
                          icon: Icon(Icons.play_arrow),
                          iconSize: 64.0,
                          onPressed: _player.play,
                        ),
                      IconButton(
                        icon: Icon(Icons.stop),
                        iconSize: 64.0,
                        onPressed: state == AudioPlaybackState.stopped ||
                                state == AudioPlaybackState.none
                            ? null
                            : _player.stop,
                      ),
                    ],
                  );
                },
              ),
              Text("Track position"),
              StreamBuilder<Duration>(
                stream: _player.durationStream,
                builder: (context, snapshot) {
                  final duration = snapshot.data ?? Duration.zero;
                  return StreamBuilder<Duration>(
                    stream: _player.getPositionStream(),
                    builder: (context, snapshot) {
                      var position = snapshot.data ?? Duration.zero;
                      if (position > duration) {
                        position = duration;
                      }
                      return SeekBar(
                        duration: duration,
                        position: position,
                        onChangeEnd: (newPosition) {
                          _player.seek(newPosition);
                        },
                      );
                    },
                  );
                },
              ),
              Text("Volume"),
              StreamBuilder<double>(
                  stream: _volumeSubject.stream,
                  builder: (context, snapshot) => Row(
                        children: [
                          FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (currentVolume <= 0) {
                                    currentVolume = 0;
                                  } else {
                                    currentVolume = currentVolume - 10;
                                  }
                                  print(currentVolume);
                                });
                                _volumeSubject.add(currentVolume.toDouble());
                                _player.setVolume(currentVolume.toDouble());
                              },
                              child: Text('Evet')),
                          FloatingActionButton(
                              heroTag: 'hayir',
                              onPressed: () {
                                setState(() {
                                  if (currentVolume > 100) {
                                    currentVolume = 100;
                                  } else {
                                    currentVolume = currentVolume + 10;
                                  }

                                  print(currentVolume);
                                });
                                _volumeSubject.add(currentVolume.toDouble());
                                _player.setVolume(currentVolume.toDouble());
                              },
                              child: Text('Hayir'))
                        ],
                      )),

              // Slider(
              //     divisions: 20,
              //     min: 0.0,
              //     max: 2.0,
              //     value: snapshot.data ?? 1.0,
              //     onChanged: (value) {
              //       _volumeSubject.add(value);
              //       _player.setVolume(value);
              //     },
              //   ),
              Text("Speed"),
              StreamBuilder<double>(
                stream: _speedSubject.stream,
                builder: (context, snapshot) => Slider(
                  divisions: 10,
                  min: 0.5,
                  max: 1.5,
                  value: snapshot.data ?? 1.0,
                  onChanged: (value) {
                    _speedSubject.add(value);
                    _player.setSpeed(value);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
