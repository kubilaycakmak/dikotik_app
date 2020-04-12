import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:dikotik_app/pages/test_field_page.dart';
import 'package:dikotik_app/pages/warning_page.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:volume/volume.dart';
import 'get_information_page.dart';

class VoiceDbSetPage extends StatefulWidget {
  @override
  _VoiceDbSetPageState createState() => _VoiceDbSetPageState();
}

class _VoiceDbSetPageState extends State<VoiceDbSetPage> {
  AudioManager audioManager;
  int maxVol, currentVol;

  @override
  void initState() {
    super.initState();
    initPlatformState();
    audioPlayer.setAsset("assets/sound/woman/wtestSound.mp3");
    updateVolumes();
  }

  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  AudioPlayer audioPlayer = AudioPlayer();

  Future loadWomanSound() async {
    // advancedPlayerWoman = await AudioCache().play("sound/$sex/$name.mp3");
    audioPlayer.setAsset("assets/sound/woman/wtestSound.mp3");
  }

  Future loadManSound() async {
    // advancedPlayerWoman = await AudioCache().play("sound/$sex/$name.mp3");
    audioPlayer.setAsset("assets/sound/man/mtestSound.mp3");
  }

  Future<void> initPlatformState() async {
    await Volume.controlVolume(AudioManager.STREAM_MUSIC);
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          title: Text('Ses Seviye Ekranı'),
          backgroundColor: Colors.indigo[900],
          elevation: 0,
        ),
      ),
      backgroundColor: Colors.white,
      body: _buildVoiceDB(context),
    );
  }

  Center _buildVoiceDB(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Center(
                child: Text(
                  'Ses Şiddetini Rahatça Duyabileceğiniz Seviyeye Ayarlayın',
                  textAlign: TextAlign.center,
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
          IconButton(
            iconSize: 50,
            icon: Icon(
              Icons.play_circle_filled,
            ),
            onPressed: () {
              if (user.getSelectSex == 0) {
                loadWomanSound();
                audioPlayer.play();
              } else {
                loadManSound();
                audioPlayer.play();
              }
            },
          ),
          (currentVol != null || maxVol != null)
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Slider(
                    activeColor: Colors.teal[300],
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
            width: 300,
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.indigo[900]),
            child: FlatButton(
              color: Colors.indigo[900],
              child: Text(
                'Devam Et',
                style: paragraphText,
              ),
              onPressed: () {
                audioPlayer.pause();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WarningPage(
                              title: 'ALIŞTIRMA',
                              desc:
                                  'Bu kısım teste alışmanız içindir. Sonuca dahil edilmeyecektir.',
                              desc2: Container(),
                              page: MaterialPageRoute(
                                  builder: (context) => TestFieldPage()),
                            )));
                            audioPlayer.pause();
              },
            ),
          ),
        ],
      ),
    );
  }
}
