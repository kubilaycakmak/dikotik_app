import 'package:dikotik_app/data/user.dart';
import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:flutter/material.dart';

import 'choose_test_page.dart';

User user = new User();

class GetInformationPage extends StatefulWidget {
  @override
  _GetInformationPageState createState() => _GetInformationPageState();
}

class _GetInformationPageState extends State<GetInformationPage> {
  var c1 = new TextEditingController();
  var c2 = new TextEditingController();
  var c3 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'LÜTFEN BİLGİLERİNİNİZİ GİRİNİZ',
                style: titleText,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              controller: c1,
              onSubmitted: (val) {
                print('object');
              },
              decoration: InputDecoration(
                  hintText: 'Ad/soyad:', hintStyle: paragraphText),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              controller: c2,
              onSubmitted: (val) {
                print('object');
              },
              decoration:
                  InputDecoration(hintText: 'Yaş:', hintStyle: paragraphText),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              controller: c3,
              onSubmitted: (val) {
                print('object');
              },
              decoration: InputDecoration(
                  hintText: 'Cinsiyet:', hintStyle: paragraphText),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 250,
            decoration:
                BoxDecoration(border: Border.all(), color: Colors.teal[300]),
            child: FlatButton(
              color: Colors.teal[300],
              onPressed: () {
                print(c1.text);
                user = new User(
                    name: c1.text,
                    age: c2.text,
                    sex: c3.text,
                    leftScore: 0,
                    rightScore: 0,
                    bothLeftScore: 0,
                    bothRightScore: 0,
                    selectField: 0,
                    selectSex: 0);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PickTestPage()));
              },
              child: Text(
                'Sonraki Sayfa',
                style: paragraphText,
              ),
            ),
          )
        ],
      ),
    );
  }
}
