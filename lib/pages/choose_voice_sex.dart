import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:flutter/material.dart';

import 'voice_db_set_page.dart';

class ChooseVoiceSexPage extends StatefulWidget {
  @override
  _ChooseVoiceSexPageState createState() => _ChooseVoiceSexPageState();
}

class _ChooseVoiceSexPageState extends State<ChooseVoiceSexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Center(
                child: Text(
                  'Testte başlamadan önce kadın veya erkek sesinden birini seçiniz.',
                  textAlign: TextAlign.center,
                  style: titleText,
                ),
              )),
          Container(
            width: 250,
            decoration: BoxDecoration(border: Border.all()),
            child: FlatButton(
              color: Colors.white,
              child: Text(
                'Kadın sesi dinle',
                style: paragraphText,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 250,
            decoration: BoxDecoration(border: Border.all()),
            child: FlatButton(
              color: Colors.white,
              child: Text(
                'Erkek sesi dinle',
                style: paragraphText,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 250,
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.teal[300]),
            child: FlatButton(
              color: Colors.teal[300],
              child: Text(
                'Devam Et',
                style: paragraphText,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VoiceDbSetPage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
