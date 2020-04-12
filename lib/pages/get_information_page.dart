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
      body: _buildGetInformation(context),
    );
  }

  Widget _buildGetInformation(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  decoration: BoxDecoration(
                      border: Border.all(), color: Colors.indigo[900]),
                  child: FlatButton(
                    focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            color: Colors.indigo[900],
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
                    child: Text(
                      'Onayla',
                      style: paragraphText,
                    ),
                  ),
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
      ],
    );
  }

  calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }

  // selectDate(BuildContext context, DateTime initialDateTime,
  //     {DateTime lastDate}) async {
  //   Completer completer = Completer();
  //   String _selectedDateInString;
  //   if (Platform.isAndroid)

  //         .then((temp) {
  //       if (temp == null) return null;
  //       completer.complete(temp);
  //       setState(() {});
  //     });
  //   else
  //     DatePicker.showDatePicker(
  //       context,
  //       dateFormat: 'yyyy-mmm-dd',
  //       locale: 'en',
  //       onConfirm2: (temp, selectedIndex) {
  //         if (temp == null) return null;
  //         completer.complete(temp);

  //         setState(() {});
  //       },
  //     );
  //   return completer.future;
  // }

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
