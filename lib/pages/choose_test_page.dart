import 'package:dikotik_app/pages/choose_voice_sex.dart';
import 'package:dikotik_app/pages/style/background.dart';
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
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(60),
      //   child: AppBar(
      //     backgroundColor: ThemeData.light().colorScheme.secondary,
      //     centerTitle: true,
      //     title: Text('Test Seçim Ekranı'),
      //     elevation: 0,
      //   ),
      // ),
      body: Stack(
        children: <Widget>[
          Background(),
          _buildTestUnits(context),
        ],
      ),
    );
  }

  Widget _buildTestUnits(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 10),
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
              image: 'assets/images/audio.png'),
          customCard(
              langname: 'Dikotik Kelime Testi',
              des: '3',
              image: 'assets/images/audio.png'),
          customCard(
              langname: 'Dikotik Cümle \nTanımlama Testi',
              des: '2',
              image: 'assets/images/audio.png')
        ],
      ),
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
          color: Colors.lightBlue.shade900,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Image(
                    height: 50,
                    width: 100,
                    color: Colors.white70,
                    image: AssetImage(image),
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
