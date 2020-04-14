import 'package:dikotik_app/data/user.dart';
import 'package:dikotik_app/pages/style/background.dart';
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
      body: Stack(
        children: <Widget>[
          Background(),
          _buildGetInformation(context),
        ],
      ),
    );
  }

  Widget _buildGetInformation(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 120),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'LÜTFEN BİLGİLERİNİNİZİ GİRİNİZ',
                textAlign: TextAlign.center,
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
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
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
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FloatingActionButton.extended(
                        heroTag: 'Kadin',
                        backgroundColor: selectedChoiceButton == "Kadın" ? Colors.lightBlue.shade900 : Colors.blue.shade400,
                        label: Text(
                          'Kadın',
                          style: paragraphText,
                        ),
                        onPressed: () {
                          setState(() {
                            selectedChoiceButton = "Kadın";
                          });
                        },
                      ),
                      Checkbox(
                        onChanged: (value) {
                          setState(() {
                            selectedChoiceButton = "Kadın";
                          });
                        },
                        value: selectedChoiceButton == "Kadın" ? true : false,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FloatingActionButton.extended(
                        heroTag: 'Erkek',
                        backgroundColor: selectedChoiceButton == "Erkek" ? Colors.lightBlue.shade900 : Colors.blue.shade400,
                        label: Text(
                          'Erkek',
                          style: paragraphText,
                        ),
                        // selected: selectedChoiceButton == "Erkek",
                        onPressed: () {
                          setState(() {
                            selectedChoiceButton = "Erkek";
                          });
                        },
                      ),
                      Checkbox(
                        onChanged: (value) {
                          setState(() {
                            selectedChoiceButton = "Erkek";
                          });
                        },
                        value: selectedChoiceButton == "Erkek" ? true : false,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    child: FloatingActionButton.extended(
                      backgroundColor: Colors.lightBlue.shade900,
                      heroTag: 'kayit',
                      focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PickTestPage()));
                      },
                      label: Text(
                        'Onayla',
                        style: paragraphText,
                      ),
                    ),
                  ),
                ],
              )
              ),
        ],
      ),
    );
  }

  String birthDate = "";
  int age = -1;
  TextStyle valueTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  TextStyle textTextStyle = TextStyle(
    fontSize: 16,
  );
  TextStyle buttonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
  );
}
