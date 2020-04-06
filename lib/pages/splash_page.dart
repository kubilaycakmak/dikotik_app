import 'dart:async';
import 'package:dikotik_app/pages/entry_page.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => EntryPage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Center(
        child: Text(
          "Dikotik Test\n Uygulaması",
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
            fontFamily: "Satisfy",
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

List<Widget> listManSentences() {
  return <Widget>[
    WarningPage(
      title: 'Bilgilendirme',
      desc:
          'Bu test 35 sorudan oluşmaktadır. İlk 5 soru kullanıcıların teste alışması için oluşturulmuştur. '
          'Testte her iki kulağınıza aynı anda cümleler gelecek olup sizden sadece verilen yönlendirmelere göre doğru cümle seçimi yapılması istenmektedir.'
          'Verilecek yönlendirmeler şu şekildedir: ',
      desc2: Center(
        child: RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: '1) Aynı anda iki kulağınıza cümle gelirken sizden ',
                style: TextStyle(color: Colors.black)),
            TextSpan(
                text: 'sadece sol kulağınızdan ',
                style: TextStyle(color: Colors.red)),
            TextSpan(
                text: 'duyduğunuz cümleyi dikkat edip seçmeniz istenecektir. ',
                style: TextStyle(color: Colors.black)),
            TextSpan(
                text: '2) Aynı anda iki kulağınıza cümle gelirken ',
                style: TextStyle(color: Colors.black)),
            TextSpan(
                text: 'sadece sağ kulağınızdan ',
                style: TextStyle(color: Colors.red)),
            TextSpan(
                text: 'duyduğunuz cümleyi dikkat edip seçmeniz istenecektir. ',
                style: TextStyle(color: Colors.black)),
            TextSpan(
                text: '3) Son olarak ', style: TextStyle(color: Colors.black)),
            TextSpan(
                text: 'hem sağ hem sol kulağınızdan ',
                style: TextStyle(color: Colors.red)),
            TextSpan(
                text: 'duyduğunuz cümleyi seçmeniz olacaktır. ',
                style: TextStyle(color: Colors.black)),
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
      title: 'TEST',
      desc: 'Dikotik cümle tanımlama testine başlıyoruz',
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
