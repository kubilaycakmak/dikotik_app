import 'package:dikotik_app/pages/get_information_page.dart';
import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:flutter/material.dart';

class EntryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          title: Text('Dikotik Testi'),
          backgroundColor: Colors.cyan[900],
          elevation: 0,
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Image(
                image: AssetImage('assets/images/entry.png'),
              ),
            ),
            Text(
              'DİKOTİK DİNLEME TESTLERİ',
              style: titleText,
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
                child: Text(
                  'BAŞLA',
                  style: paragraphText,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GetInformationPage()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
