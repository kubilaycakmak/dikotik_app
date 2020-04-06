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
  String selectedChoiceButton = 'Kadın';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: Text('Bilgi Ekranı'),
          backgroundColor: Colors.indigo[900],
          elevation: 0,
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 350,
          child: _buildGetInformation(context),
        ),
      ),
    );
  }

  Widget _buildGetInformation(BuildContext context) {
    return Column(
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
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: TextField(
            controller: c1,
            onSubmitted: (val) {
              print('object');
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ad/soyad:',
                hintStyle: textField),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: TextField(
            controller: c2,
            onSubmitted: (val) {
              print('object');
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Yaş:',
                hintStyle: textField),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: Column(
              children: <Widget>[
                Text(
                  'Cinsiyet Seçimi:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ChoiceChip(
                      backgroundColor: Colors.indigo[900],
                      selectedColor: Colors.indigo[400],
                      labelPadding: EdgeInsets.all(8.0),
                      label: Text(
                        'Kadın',
                        style: paragraphText,
                      ),
                      selected: selectedChoiceButton == "Kadın",
                      onSelected: (val) {
                        setState(() {
                          selectedChoiceButton = "Kadın";
                        });
                      },
                    ),
                    ChoiceChip(
                      selectedColor: Colors.indigo[400],
                      backgroundColor: Colors.indigo[900],
                      labelPadding: EdgeInsets.all(8.0),
                      label: Text(
                        'Erkek',
                        style: paragraphText,
                      ),
                      selected: selectedChoiceButton == "Erkek",
                      onSelected: (val) {
                        setState(() {
                          selectedChoiceButton = "Erkek";
                        });
                      },
                    ),
                  ],
                ),
              ],
            )
            // TextField(
            //   controller: c3,
            //   onSubmitted: (val) {
            //     print('object');
            //   },
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //       hintText: 'Cinsiyet:', hintStyle: textField),
            // ),
            ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 265,
          decoration:
              BoxDecoration(border: Border.all(), color: Colors.indigo[900]),
          child: FlatButton(
            color: Colors.indigo[800],
            onPressed: () {
              print(c1.text);
              user = new User(
                  name: c1.text,
                  age: c2.text,
                  sex: selectedChoiceButton,
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
              'Onayla',
              style: paragraphText,
            ),
          ),
        ),
      ],
    );
  }
}
