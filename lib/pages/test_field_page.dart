import 'package:dikotik_app/data/question.dart';
import 'package:dikotik_app/pages/test_page.dart';
import 'package:flutter/material.dart';
import 'get_information_page.dart';
PageController controller = PageController(
  initialPage: 0,
);

class TestFieldPage extends StatefulWidget {
  @override
  _TestFieldPageState createState() => _TestFieldPageState();
}

class _TestFieldPageState extends State<TestFieldPage> {


  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: controller,
      physics: NeverScrollableScrollPhysics(),
      children: user.getSelectSex == 0 ? <Widget>[
        TestPage(
          title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
          question: wq1,
        ),TestPage(
          title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
          question: wq2,
        ),TestPage(
          title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
          question: wq3,
        ),
        // TestPage(
        //   title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
        //   desc:
        //       'Bu testte sadece sol kulağınızdan duyduğunuz cümleyi işaretleyin. Ses otomatik olarak başlayacaktır.',
        //   answers: questions,
        // ),
      ]
      :
      <Widget>[
        TestPage(
          title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
          question: mq1,
        ),
      ]
      ,
    );
  }
}
