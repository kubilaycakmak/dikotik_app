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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          title: Text('Test Seçim Ekranı'),
          backgroundColor: Colors.indigo[900],
          elevation: 0,
        ),
      ),
      backgroundColor: Colors.white,
      body: _buildTestUnits(context),
    );
  }

  Widget _buildTestUnits(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Center(
              child: Text(
                'LÜTFEN TEST SEÇİNİZ',
                style: titleText,
              ),
            )),
        customCard(
            langname: 'Dikotik Sayı Testi',
            des: '1',
            image: 'assets/images/entry.png'),
        customCard(
            langname: 'Dikotik Kelime Testi',
            des: '3',
            image: 'assets/images/entry.png'),
        customCard(
            langname: 'Dikotik Cümle \nTanımlama Testi',
            des: '2',
            image: 'assets/images/entry.png')
      ],
    );
  }

  Widget customCard({String langname, String image, String des}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            user.setSelectText = des;
            print(user.getSelectText);
          });
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ChooseVoiceSexPage(
                        testUnit: des,
                      )));
        },
        child: Material(
          color: Colors.indigo[900],
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      height: 90.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
