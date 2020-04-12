import 'package:dikotik_app/data/numbers.dart';
import 'package:dikotik_app/data/question.dart';
import 'package:dikotik_app/data/words.dart';
import 'package:dikotik_app/pages/test_page.dart';
import 'package:dikotik_app/pages/warning_page.dart';
import 'package:flutter/material.dart';
import 'get_information_page.dart';
import 'result_page.dart';

PageController controller = PageController(initialPage: 0, keepPage: false);

class TestFieldPage extends StatefulWidget {
  @override
  _TestFieldPageState createState() => _TestFieldPageState();
}

class _TestFieldPageState extends State<TestFieldPage> {
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      physics: AlwaysScrollableScrollPhysics(),
      children: user.getSelectText == '2'
          ? user.getSelectSex == 0 ? listWomanSentences() : listManSentences()
          : user.getSelectText == '1'
              ? user.getSelectSex == 0 ? listWomanNumber() : listManNumber()
              : user.getSelectText == '3'
                  ? user.getSelectSex == 0 ? listWomanWord() : listManWord()
                  : null,
    );
  }

  List<Widget> listManNumber() {
    return <Widget>[
      WarningPage(
          title: 'BİLGİLENDİRME',
          desc:
              'Kulaklığınızı sağ ve sol kulak olarak taktıgınızdan emin olunuz.',
          desc2: Center()),
      WarningPage(
          title: 'BİLGİLENDİRME',
          desc:
              'Bu test 35 sorudan oluşmaktadır. İlk 5 soru kullanıcıların teste alışması için oluşturulmuştur. '
              'Testte her iki kulağınıza aynı anda sayılar gelecek olup sizden sadece verilen yönlendirmelere göre doğru sayı seçimi yapılması istenmektedir.',
          desc2: Center()),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: '',
        desc2: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text:
                      'Test sırasında aynı anda her iki kulağınıza sayılar gelecek. Sizden,',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              TextSpan(
                  text: '\n\n1) Sadece sağ kulağınızdan duyduğunuz sayıyı',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
              TextSpan(
                  text: '\n\n2) Sadece sol kulağınızdan duyduğunuz sayıyı',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
              TextSpan(
                  text:
                      '\n\n3) Her iki kulağınızdan duyduğunuz sayıları seçmeniz istenecektir.',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
            ]),
          ),
        ),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqNumber1,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqNumber2,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqNumber3,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqNumber4,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqNumber5,
      ),
      WarningPage(
        title: 'TEST',
        desc: 'Dikotik testine başlıyoruz',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber6,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber7,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber8,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber9,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber10,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber11,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber12,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber13,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber14,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber15,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber16,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber17,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber18,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber19,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber20,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber21,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber22,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber23,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber24,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber25,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber26,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber27,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber28,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber29,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber30,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber31,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber32,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber33,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber34,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqNumber35,
      ),
      WarningPage(
        title: 'SONUÇ',
        desc: 'Testi başarı ile tamamladınız',
        desc2: Center(
          child: Text(
            'Sonuçları görmek için devam ediniz...',
            style: TextStyle(fontSize: 18),
          ),
        ),
        page: MaterialPageRoute(
          builder: (context) => ResultPage(),
        ),
      )
    ];
  }

  List<Widget> listWomanNumber() {
    return <Widget>[
      WarningPage(
          title: 'BİLGİLENDİRME',
          desc:
              'Kulaklığınızı sağ ve sol kulak olarak taktıgınızdan emin olunuz.',
          desc2: Center()),
      WarningPage(
          title: 'BİLGİLENDİRME',
          desc:
              'Bu test 35 sorudan oluşmaktadır. İlk 5 soru kullanıcıların teste alışması için oluşturulmuştur. '
              'Testte her iki kulağınıza aynı anda sayılar gelecek olup sizden sadece verilen yönlendirmelere göre doğru sayı seçimi yapılması istenmektedir.',
          desc2: Center()),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: '',
        desc2: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text:
                      'Test sırasında aynı anda her iki kulağınıza sayılar gelecek. Sizden,',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              TextSpan(
                  text: '\n\n1) Sadece sağ kulağınızdan duyduğunuz sayıyı',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
              TextSpan(
                  text: '\n\n2) Sadece sol kulağınızdan duyduğunuz sayıyı',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
              TextSpan(
                  text:
                      '\n\n3) Her iki kulağınızdan duyduğunuz sayıları seçmeniz istenecektir.',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
            ]),
          ),
        ),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqNumber1,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqNumber2,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqNumber3,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqNumber4,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqNumber5,
      ),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: 'Bu testte SOL kulağınızdan duyduğunuz sayıyı seçiniz.',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber6,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber7,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber8,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber9,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber10,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber11,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber12,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber13,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber14,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber15,
      ),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: 'Bu testte SAĞ kulağınızdan duyduğunuz sayıyı seçiniz.',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber16,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber17,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber18,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber19,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber20,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber21,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber22,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber23,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber24,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber25,
      ),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: 'Bu testte HER İKİ kulağınızdan duyduğunuz sayıyı seçiniz.',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber26,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber27,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber28,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber29,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber30,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber31,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber32,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber33,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber34,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqNumber35,
      ),
      WarningPage(
        title: 'SONUÇ',
        desc: 'Testi başarı ile tamamladınız',
        desc2: Center(
          child: Text(
            'Sonuçları görmek için devam ediniz...',
            style: TextStyle(fontSize: 18),
          ),
        ),
        page: MaterialPageRoute(
          builder: (context) => ResultPage(),
        ),
      )
    ];
  }

  List<Widget> listManSentences() {
    return <Widget>[
      WarningPage(
          title: 'BİLGİLENDİRME',
          desc:
              'Kulaklığınızı sağ ve sol kulak olarak taktıgınızdan emin olunuz.',
          desc2: Center()),
      WarningPage(
          title: 'BİLGİLENDİRME',
          desc:
              'Bu test 35 sorudan oluşmaktadır. İlk 5 soru kullanıcıların teste alışması için oluşturulmuştur. '
              'Testte her iki kulağınıza aynı anda cümleler gelecek olup sizden sadece verilen yönlendirmelere göre doğru cümle seçimi yapılması istenmektedir.',
          desc2: Center()),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: '',
        desc2: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text:
                      'Test sırasında aynı anda her iki kulağınıza cümleler gelecek. Sizden,',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              TextSpan(
                  text: '\n\n1) Sadece sağ kulağınızdan duyduğunuz cümleyi',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
              TextSpan(
                  text: '\n\n2) Sadece sol kulağınızdan duyduğunuz cümleyi',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
              TextSpan(
                  text:
                      '\n\n3) Her iki kulağınızdan duyduğunuz cümleleri seçmeniz istenecektir.',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
              // TextSpan(
              //     text: '\n\n2) Aynı anda iki kulağınıza cümle gelirken ',
              //     style: TextStyle(color: Colors.black, fontSize: 18)),
              // TextSpan(
              //     text: 'sadece sağ kulağınızdan ',
              //     style: TextStyle(color: Colors.red, fontSize: 18)),
              // TextSpan(
              //     text:
              //         'duyduğunuz cümleyi dikkat edip seçmeniz istenecektir. ',
              //     style: TextStyle(color: Colors.black, fontSize: 18)),
              // TextSpan(
              //     text: '\n\n3) Son olarak ',
              //     style: TextStyle(color: Colors.black, fontSize: 18)),
              // TextSpan(
              //     text: 'hem sağ hem sol kulağınızdan ',
              //     style: TextStyle(color: Colors.red, fontSize: 18)),
              // TextSpan(
              //     text: 'duyduğunuz cümleyi seçmeniz olacaktır. ',
              //     style: TextStyle(color: Colors.black, fontSize: 18)),
            ]),
          ),
        ),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqSentences1,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqSentences2,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqSentences3,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqSentences4,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: mqSentences5,
      ),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: 'Bu testte SOL kulağınızdan duyduğunuz cümleyi seçiniz.',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences6,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences7,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences8,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences9,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences10,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences11,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences12,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences13,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences14,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences15,
      ),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: 'Bu testte SAĞ kulağınızdan duyduğunuz cümleyi seçiniz.',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences16,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences17,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences18,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences19,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences20,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences21,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences22,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences23,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences24,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences25,
      ),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: 'Bu testte HER İKİ Kulağınızdan duyduğunuz cümleyi seçiniz.',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences26,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences27,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences28,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences29,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences30,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences31,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences32,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences33,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences34,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: mqSentences35,
      ),
      WarningPage(
        title: 'SONUÇ',
        desc: 'Testi başarı ile tamamladınız',
        desc2: Center(
          child: Text(
            'Sonuçları görmek için devam ediniz...',
            style: TextStyle(fontSize: 18),
          ),
        ),
        page: MaterialPageRoute(
          builder: (context) => ResultPage(),
        ),
      )
    ];
  }

  List<Widget> listWomanSentences() {
    return <Widget>[
      WarningPage(
          title: 'BİLGİLENDİRME',
          desc:
              'Kulaklığınızı sağ ve sol kulak olarak taktıgınızdan emin olunuz.',
          desc2: Center()),
      WarningPage(
          title: 'BİLGİLENDİRME',
          desc:
              'Bu test 35 sorudan oluşmaktadır. İlk 5 soru kullanıcıların teste alışması için oluşturulmuştur. '
              'Testte her iki kulağınıza aynı anda cümleler gelecek olup sizden sadece verilen yönlendirmelere göre doğru cümle seçimi yapılması istenmektedir.',
          desc2: Center()),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: '',
        desc2: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text:
                      'Test sırasında aynı anda her iki kulağınıza cümleler gelecek. Sizden,',
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              TextSpan(
                  text: '\n\n1) Sadece sağ kulağınızdan duyduğunuz cümleyi',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
              TextSpan(
                  text: '\n\n2) Sadece sol kulağınızdan duyduğunuz cümleyi',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
              TextSpan(
                  text:
                      '\n\n3) Her iki kulağınızdan duyduğunuz cümleleri seçmeniz istenecektir.',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
            ]),
          ),
        ),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqSentences1,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqSentences2,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqSentences3,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqSentences4,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN ',
        question: wqSentences5,
      ),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: 'Bu testte SOL kulağınızdan duyduğunuz cümleyi seçiniz.',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences6,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences7,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences8,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences9,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences10,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences11,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences12,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences13,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences14,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences15,
      ),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: 'Bu testte SAĞ kulağınızdan duyduğunuz cümleyi seçiniz.',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences16,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences17,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences18,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences19,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences20,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences21,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences22,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences23,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences24,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences25,
      ),
      WarningPage(
        title: 'BİLGİLENDİRME',
        desc: 'Bu testte HER İKİ kulağınızdan duyduğunuz cümleyi seçiniz.',
        desc2: Center(),
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences26,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences27,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences28,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences29,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences30,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences31,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences32,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences33,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences34,
      ),
      TestPage(
        title: 'DİKKATLİCE  DİNLEYİN',
        question: wqSentences35,
      ),
      WarningPage(
        title: 'SONUÇ',
        desc: 'Testi başarı ile tamamladınız',
        desc2: Center(
          child: Text(
            'Sonuçları görmek için devam ediniz...',
            style: TextStyle(fontSize: 18),
          ),
        ),
        page: MaterialPageRoute(
          builder: (context) => ResultPage(),
        ),
      )
    ];
  }
}

List<Widget> listManWord() {
  return <Widget>[
    WarningPage(
        title: 'BİLGİLENDİRME',
        desc:
            'Kulaklığınızı sağ ve sol kulak olarak taktıgınızdan emin olunuz.',
        desc2: Center()),
    WarningPage(
        title: 'BİLGİLENDİRME',
        desc:
            'Bu test 35 sorudan oluşmaktadır. İlk 5 soru kullanıcıların teste alışması için oluşturulmuştur. '
            'Testte her iki kulağınıza aynı anda kelimeler gelecek olup sizden sadece verilen yönlendirmelere göre doğru kelime seçimi yapılması istenmektedir.',
        desc2: Center()),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: '',
      desc2: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: <TextSpan>[
            TextSpan(
                text:
                    'Test sırasında aynı anda her iki kulağınıza kelimeler gelecek. Sizden,',
                style: TextStyle(color: Colors.black, fontSize: 18)),
            TextSpan(
                text: '\n\n1) Sadece sağ kulağınızdan duyduğunuz kelimeyi',
                style: TextStyle(color: Colors.red, fontSize: 18)),
            TextSpan(
                text: '\n\n2) Sadece sol kulağınızdan duyduğunuz kelimeyi',
                style: TextStyle(color: Colors.red, fontSize: 18)),
            TextSpan(
                text:
                    '\n\n3) Her iki kulağınızdan duyduğunuz kelimeleri seçmeniz istenecektir.',
                style: TextStyle(color: Colors.red, fontSize: 18)),
          ]),
        ),
      ),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: mqWord1,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: mqWord2,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: mqWord3,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: mqWord4,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: mqWord5,
    ),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: 'Bu testte SOL kulağınızdan duyduğunuz kelimeyi seçiniz.',
      desc2: Center(),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord6,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord7,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord8,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord9,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord10,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord11,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord12,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord13,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord14,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord15,
    ),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: 'Bu testte SAĞ kulağınızdan duyduğunuz kelimeyi seçiniz.',
      desc2: Center(),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord16,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord17,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord18,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord19,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord20,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord21,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord22,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord23,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord24,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord25,
    ),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: 'Bu testte HER İKİ kulağınızdan duyduğunuz kelimeyi seçiniz.',
      desc2: Center(),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord26,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord27,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord28,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord29,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord30,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord31,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord32,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord33,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord34,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: mqWord35,
    ),
    WarningPage(
      title: 'SONUÇ',
      desc: 'Testi başarı ile tamamladınız',
      desc2: Center(
        child: Text(
          'Sonuçları görmek için devam ediniz...',
          style: TextStyle(fontSize: 18),
        ),
      ),
      page: MaterialPageRoute(
        builder: (context) => ResultPage(),
      ),
    )
  ];
}

List<Widget> listWomanWord() {
  return <Widget>[
    WarningPage(
        title: 'BİLGİLENDİRME',
        desc:
            'Kulaklığınızı sağ ve sol kulak olarak taktıgınızdan emin olunuz.',
        desc2: Center()),
    WarningPage(
        title: 'BİLGİLENDİRME',
        desc:
            'Bu test 35 sorudan oluşmaktadır. İlk 5 soru kullanıcıların teste alışması için oluşturulmuştur. '
            'Testte her iki kulağınıza aynı anda kelimeler gelecek olup sizden sadece verilen yönlendirmelere göre doğru kelime seçimi yapılması istenmektedir.',
        desc2: Center()),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: '',
      desc2: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: <TextSpan>[
            TextSpan(
                text:
                    'Test sırasında aynı anda her iki kulağınıza kelimeler gelecek. Sizden,',
                style: TextStyle(color: Colors.black, fontSize: 18)),
            TextSpan(
                text: '\n\n1) Sadece sağ kulağınızdan duyduğunuz kelimeyi',
                style: TextStyle(color: Colors.red, fontSize: 18)),
            TextSpan(
                text: '\n\n2) Sadece sol kulağınızdan duyduğunuz kelimeyi',
                style: TextStyle(color: Colors.red, fontSize: 18)),
            TextSpan(
                text:
                    '\n\n3) Her iki kulağınızdan duyduğunuz kelimeleri seçmeniz istenecektir.',
                style: TextStyle(color: Colors.red, fontSize: 18)),
          ]),
        ),
      ),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: wqWord1,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: wqWord2,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: wqWord3,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: wqWord4,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN ',
      question: wqWord5,
    ),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: 'Bu testte SOL kulağınızdan duyduğunuz kelimeyi seçiniz.',
      desc2: Center(),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord6,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord7,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord8,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord9,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord10,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord11,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord12,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord13,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord14,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord15,
    ),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: 'Bu testte SAĞ kulağınızdan duyduğunuz kelimeyi seçiniz.',
      desc2: Center(),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord16,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord17,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord18,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord19,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord20,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord21,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord22,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord23,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord24,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord25,
    ),
    WarningPage(
      title: 'BİLGİLENDİRME',
      desc: 'Bu testte HER İKİ kulağınızdan duyduğunuz kelimeyi seçiniz.',
      desc2: Center(),
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord26,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord27,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord28,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord29,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord30,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord31,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord32,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord33,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord34,
    ),
    TestPage(
      title: 'DİKKATLİCE  DİNLEYİN',
      question: wqWord35,
    ),
    WarningPage(
      title: 'SONUÇ',
      desc: 'Testi başarı ile tamamladınız',
      desc2: Center(
        child: Text(
          'Sonuçları görmek için devam ediniz...',
          style: TextStyle(fontSize: 18),
        ),
      ),
      page: MaterialPageRoute(
        builder: (context) => ResultPage(),
      ),
    )
  ];
}
