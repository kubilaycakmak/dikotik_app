import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:flutter/material.dart';

class WarningPage extends StatelessWidget {
  final String title;
  final String desc;
  final String desc2;
  final MaterialPageRoute page;

  const WarningPage({Key key, this.title, this.desc, this.desc2, this.page})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: titleText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: paragraphText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                desc2,
                textAlign: TextAlign.center,
                style: paragraphText,
              ),
            ),
            Container(
                width: 250,
                decoration: BoxDecoration(
                    border: Border.all(), color: Colors.teal[300]),
                child: FlatButton(
                  color: Colors.teal[300],
                  child: Text(
                    'Devam Et',
                    style: paragraphText,
                  ),
                  onPressed: () {
                    Navigator.push(context, page);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
