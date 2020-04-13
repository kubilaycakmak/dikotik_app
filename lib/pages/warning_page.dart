import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:flutter/material.dart';

import 'test_field_page.dart';

class WarningPage extends StatelessWidget {
  final String title;
  final String desc;
  final Widget desc2;
  final MaterialPageRoute page;
  

  const WarningPage({Key key, this.title, this.desc, this.desc2, this.page})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: buildWarningPageBody(context),
    );
  }

  Widget buildWarningPageBody(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 110),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                title.toUpperCase(),
                textAlign: TextAlign.center,
                style: titleText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: desc2,
            ),
            Container(
                width: 250,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: FloatingActionButton.extended(
                  label: Text(
                    'Tamam',
                    style: paragraphText,
                  ),
                  onPressed: () {
                    title == 'ALIŞTIRMA'
                        ? Navigator.pushAndRemoveUntil(
                            context,
                            page,
                            (Route<dynamic> route) => false,
                          )
                        : title == 'SONUÇ'
                            ? Navigator.pushAndRemoveUntil(
                                context,
                                page,
                                (Route<dynamic> route) => false,
                              )
                            : title == ''
                                ? Navigator.push(context, page)
                                : controller.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeIn);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
