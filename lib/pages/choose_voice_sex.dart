import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:flutter/material.dart';

import 'get_information_page.dart';
import 'voice_db_set_page.dart';

class ChooseVoiceSexPage extends StatefulWidget {
  final String testUnit;

  const ChooseVoiceSexPage({Key key, this.testUnit}) : super(key: key);
  @override
  _ChooseVoiceSexPageState createState() => _ChooseVoiceSexPageState();
}

class _ChooseVoiceSexPageState extends State<ChooseVoiceSexPage> {
  AudioPlayer advancedPlayerWoman;
  AudioPlayer advancedPlayerMan;
  AudioCache audioCache = new AudioCache();
  AudioPlayer advancedPlayer = new AudioPlayer();
  AudioCache cacheWoman;
  AudioCache cacheMan;
  bool isPlay = false;
  Duration duration;
  String selectedChoiceButton = 'Kadın sesi';

  Future loadWSound() async {
    advancedPlayerWoman = await cacheWoman.play("sound/woman/wtestSound.mp3");
  }

  Future loadMSound() async {
    advancedPlayerMan = await cacheMan.play("sound/man/mtestSound.mp3");
  }

  Future loadWWordSound() async {
    advancedPlayerWoman =
        await cacheWoman.play("sound1/woman/35wWordSound.mp3");
  }

  Future loadMWordSound() async {
    advancedPlayerMan = await cacheMan.play("sound1/man/35mWordSound.mp3");
  }

  Future loadWNumberSound() async {
    advancedPlayerWoman =
        await cacheWoman.play("sound2/woman/35wNumberSound.mp3");
  }

  Future loadMNumberSound() async {
    advancedPlayerMan = await cacheMan.play("sound2/man/35mNumberSound.mp3");
  }

  @override
  void initState() {
    super.initState();
    cacheWoman = new AudioCache(fixedPlayer: advancedPlayerWoman);
    cacheMan = new AudioCache(fixedPlayer: advancedPlayerMan);
  }

  @override
  void dispose() {
    advancedPlayerMan.dispose();
    advancedPlayerWoman.dispose();
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
          child: ChoiceChip(
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
                widget.testUnit == '2'
                    ? loadWSound()
                    : widget.testUnit == '1'
                        ? loadWNumberSound()
                        : loadWWordSound();
                user.setSelectSex = 0;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ChoiceChip(
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
                widget.testUnit == '2'
                    ? loadMSound()
                    : widget.testUnit == '1'
                        ? loadMNumberSound()
                        : loadMWordSound();
                user.setSelectSex = 1;
              });
            },
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
