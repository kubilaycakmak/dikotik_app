import 'package:dikotik_app/pages/choose_voice_sex.dart';
import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:flutter/material.dart';

import 'get_information_page.dart';

class PickTestPage extends StatefulWidget {
  @override
  _PickTestPageState createState() => _PickTestPageState();
}

class _PickTestPageState extends State<PickTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Center(
                child: Text(
                  'LÜTFEN TEST SEÇİNİZ',
                  style: titleText,
                ),
              )),
          Container(
            width: 250,
            decoration: BoxDecoration(border: Border.all()),
            child: FlatButton(
              color: Colors.white,
              child: Text(
                'Dikotik Sayı Testi',
                style: paragraphText,
              ),
              onPressed: () {
                setState(() {
                  user.setSelectField = 0;
                });
                                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChooseVoiceSexPage()));
              },
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
                'Dikotik Kelime Testi',
                style: paragraphText,
              ),
              onPressed: () {
                setState(() {
                  user.setSelectField = 1;
                });
                Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ChooseVoiceSexPage()));
              },
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
                'Dikotik Cümle Tanımlama Testi',
                textAlign: TextAlign.center,
                style: paragraphText,
              ),
              onPressed: () {
                setState(() {
                  user.setSelectField = 2;
                  print(user.getSelectField);
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChooseVoiceSexPage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
