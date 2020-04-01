import 'package:dikotik_app/pages/pick_test_page.dart';
import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:flutter/material.dart';

class GetInformationPage extends StatefulWidget {
  @override
  _GetInformationPageState createState() => _GetInformationPageState();
}

class _GetInformationPageState extends State<GetInformationPage> {
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
          buildTextField('Ad/soyad:'),
          buildTextField('Yaş:'),
          buildTextField('Cinsiyet:'),
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

  Padding buildTextField(String hintTitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextField(
        decoration:
            InputDecoration(hintText: '$hintTitle', hintStyle: paragraphText),
      ),
    );
  }
}
