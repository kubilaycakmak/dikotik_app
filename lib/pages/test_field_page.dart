import 'package:dikotik_app/data/answers.dart';
import 'package:dikotik_app/pages/test_page.dart';
import 'package:flutter/material.dart';

class TestFieldPage extends StatefulWidget {
  @override
  _TestFieldPageState createState() => _TestFieldPageState();
}

class _TestFieldPageState extends State<TestFieldPage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        TestPage(
          title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
          desc:
              'Bu testte sadece sol kulağınızdan duyduğunuz cümleyi işaretleyin.Ses otomatik olarak baslayacaktir.',
          answers: answer,
        ),
        TestPage(
          title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
          desc:
              'Bu testte sadece sol kulağınızdan duyduğunuz cümleyi işaretleyin.Ses otomatik olarak baslayacaktir.',
          answers: answer,
        ),
      ],
    );
  }
}
