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
  Future loadWSound() async {
    advancedPlayerWoman = await AudioCache().play("sound/woman/wtestSound.mp3");
  }
  Future loadMSound() async {
    advancedPlayerMan = await AudioCache().play("sound/man/mtestSound.mp3");
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
       Container(
            width: 250,
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.indigo[900]),
            child: FlatButton(
              color: Colors.indigo[800],
            child: Text(
              'Kadın sesi dinle',
              style: paragraphText,
            ),
            onPressed: () {
              setState(() {
                user.setSelectSex = 0;
              });
              // advancedPlayerMan.pause();
              // advancedPlayerWoman.pause();
              loadWSound();
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => VoiceDbSetPage()));
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            width: 250,
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.indigo[900]),
            child: FlatButton(
              color: Colors.indigo[800],
            child: Text(
              'Erkek sesi dinle',
              style: paragraphText,
            ),
            onPressed: () {
              setState(() {
                user.setSelectSex = 1;
              });
              // advancedPlayerWoman.pause();
              // advancedPlayerMan.pause();
              if(AudioCache() == null){
                loadMSound();
              }
              advancedPlayerWoman.pause();
              advancedPlayerMan.pause();
              
              
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => VoiceDbSetPage()));
            },
          ),
        ),
        SizedBox(
          height: 10,
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
              advancedPlayerWoman.pause();
              advancedPlayerMan.pause();
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
