import 'package:dikotik_app/pages/get_information_page.dart';
import 'package:dikotik_app/pages/style/background.dart';
import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:flutter/material.dart';

import 'audiometry_page.dart';

class EntryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          Background(),
          buildEntryScreen(context),
        ],
      ),
    );
  }

  Widget buildEntryScreen(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 120),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Image(
                width: 200,
                color: Colors.white70,
                image: AssetImage(
                  'assets/images/audio.png',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'DİKOTİK DİNLEME',
                style: titleText,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildButtons(context, 'AUDIOMETRY', 0),
            SizedBox(
              height: 10,
            ),
            buildButtons(context, 'DİKOTİK DİNLEME TESTLERİ', 1),
          ],
        ),
      ),
    );
  }

  Widget buildButtons(BuildContext context, String title, int index) {
    return Container(
      width: 300,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: FloatingActionButton.extended(
        backgroundColor: Colors.lightBlue.shade900,
        heroTag: '$title',
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        label: Text(
          title,
          style: paragraphText,
        ),
        onPressed: () {
          index == 1
              ? Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GetInformationPage()))
              : Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AudiometryPage()));
        },
      ),
    );
  }
}
