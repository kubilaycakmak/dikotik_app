// import 'package:audioplayers/audio_cache.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'get_information_page.dart';
import 'voice_db_set_page.dart';

class ChooseVoiceSexPage extends StatefulWidget {
  final String testUnit;

  const ChooseVoiceSexPage({Key key, this.testUnit}) : super(key: key);
  @override
  _ChooseVoiceSexPageState createState() => _ChooseVoiceSexPageState();
}

class _ChooseVoiceSexPageState extends State<ChooseVoiceSexPage> {
  // AudioPlayer advancedPlayerWoman;
  // AudioPlayer advancedPlayerMan;
  bool isPlay = true;
  String selectedChoiceButton = 'Kadın sesi';
  AudioPlayer audioPlayer = AudioPlayer();

  Future loadWomanSound() async {
    // advancedPlayerWoman = await AudioCache().play("sound/$sex/$name.mp3");
    audioPlayer.setAsset("assets/sound/woman/wtestSound.mp3");
  }

  Future loadManSound() async {
    // advancedPlayerWoman = await AudioCache().play("sound/$sex/$name.mp3");
    audioPlayer.setAsset("assets/sound/man/mtestSound.mp3");
  }

  @override
  void initState() {
    super.initState();
    audioPlayer.setAsset("assets/sound/woman/wtestSound.mp3");
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          title: Text('Ses Seçim Ekranı'),
          backgroundColor: Colors.indigo[900],
          elevation: 0,
        ),
      ),
      backgroundColor: Colors.white,
      body: _buildVoiceSex(context),
    );
  }

  Column _buildVoiceSex(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Center(
              child: Text(
                'Test yapmaya başlamadan önce kadın veya erkek sesinden birini seçiniz.',
                textAlign: TextAlign.center,
                style: titleText,
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ChoiceChip(
                avatar: Icon(
                  Icons.volume_up,
                  color: Colors.white,
                ),
                backgroundColor: Colors.indigo[900],
                selectedColor: Colors.indigo[400],
                labelPadding: EdgeInsets.all(8.0),
                label: Text(
                  'Kadın sesi',
                  style: paragraphText,
                ),
                selected: selectedChoiceButton == "Kadın sesi",
                onSelected: (val) {
                  setState(() {
                    selectedChoiceButton = "Kadın sesi";
                    loadWomanSound();
                    audioPlayer.play();
                    user.setSelectSex = 0;
                  });
                },
              ),
              Checkbox(
                onChanged: (value) {
                  setState(() {
                    user.setSelectSex = 0;
                  });
                },
                value: user.selectSex == 0 ? true : false,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ChoiceChip(
                avatar: Icon(
                  Icons.volume_up,
                  color: Colors.white,
                ),
                selectedColor: Colors.indigo[400],
                backgroundColor: Colors.indigo[900],
                labelPadding: EdgeInsets.all(8.0),
                label: Text(
                  'Erkek sesi',
                  style: paragraphText,
                ),
                selected: selectedChoiceButton == "Erkek sesi",
                onSelected: (val) {
                  setState(() {
                    selectedChoiceButton = "Erkek sesi";
                    loadManSound();
                    audioPlayer.play();
                    user.setSelectSex = 1;
                  });
                },
              ),
              Checkbox(
                onChanged: (value) {
                  setState(() {
                    user.setSelectSex = 1;
                  });
                },
                value: user.selectSex == 1 ? true : false,
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 250,
          decoration:
              BoxDecoration(border: Border.all(), color: Colors.indigo[900]),
          child: FlatButton(
            color: Colors.indigo[800],
            child: Text(
              'Onayla',
              style: paragraphText,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VoiceDbSetPage()));
              audioPlayer.stop();
              audioPlayer.dispose();
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
