import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:dikotik_app/pages/test_field_page.dart';
import 'package:dikotik_app/pages/warning_page.dart';
import 'package:flutter/material.dart';
import 'package:volume/volume.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class VoiceDbSetPage extends StatefulWidget {
  @override
  _VoiceDbSetPageState createState() => _VoiceDbSetPageState();
}

class _VoiceDbSetPageState extends State<VoiceDbSetPage> {
  AudioManager audioManager;
  int maxVol, currentVol;
  final assets = <String>[
    "assets/sound/song1.mp3",
    "assets/sound/ornek_dikotik.mpeg",
  ];
  var _currentAssetPosition = -1;
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();

  void _open(int assetIndex) {
    _currentAssetPosition = assetIndex % assets.length;
    _assetsAudioPlayer.open(assets[_currentAssetPosition]);
  }

  void _playPause() {
    _assetsAudioPlayer.playOrPause();
  }

  @override
  void initState() {
    super.initState();
    _open(_currentAssetPosition);
  }

  @override
  void dispose() {
    _assetsAudioPlayer.stop();
    super.dispose();
  }

  Future<void> initPlatformState() async {
    await Volume.controlVolume(AudioManager.STREAM_SYSTEM);
  }

  updateVolumes() async {
    // get Max Volume
    maxVol = await Volume.getMaxVol;
    // get Current Volume
    currentVol = await Volume.getVol;
    setState(() {});
  }

  setVol(int i) async {
    await Volume.setVol(i);
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
                  'Ses Şiddetini Rahatça Duyabileceğiniz Seviyeye Ayarlayın',
                  style: titleText,
                ),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Center(
                child: Text(
                  '40db - 110db',
                  style: titleText,
                ),
              )),
          SizedBox(
            height: 20,
          ),
          StreamBuilder(
            stream: _assetsAudioPlayer.current,
            initialData: PlayingAudio(),
            builder: (context, snapshot) {
              return IconButton(
                iconSize: 50,
                icon: Icon(
                  Icons.play_circle_filled,
                ),
                onPressed: () {
                  _open(1);
                  _playPause();
                },
              );
            },
          ),
          (currentVol != null || maxVol != null)
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Slider(
                    label: 'db',
                    value: currentVol / 1.0,
                    divisions: maxVol,
                    max: maxVol / 1.0,
                    min: 0,
                    onChanged: (double d) {
                      setVol(d.toInt());
                      updateVolumes();
                    },
                  ),
                )
              : Container(),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 250,
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.teal[300]),
            child: FlatButton(
              color: Colors.teal[300],
              child: Text('Devam Et'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WarningPage(
                              title: 'ALIŞTIRMA',
                              desc:
                                  'Bu kısım teste alışmanız içindir. Sonuca dahil edilmeyecektir.',
                              desc2: '',
                              page: MaterialPageRoute(
                                  builder: (context) => TestFieldPage()),
                            )));
              },
            ),
          ),
        ],
      ),
    );
  }
}
