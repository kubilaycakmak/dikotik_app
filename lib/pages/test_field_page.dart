import 'package:dikotik_app/data/question.dart';
import 'package:dikotik_app/pages/test_page.dart';
import 'package:dikotik_app/pages/warning_page.dart';
import 'package:flutter/material.dart';
import 'entry_page.dart';
import 'get_information_page.dart';
import 'result_page.dart';

PageController controller = PageController(
  initialPage: 0,
);

class TestFieldPage extends StatefulWidget {
  @override
  _TestFieldPageState createState() => _TestFieldPageState();
}

class _TestFieldPageState extends State<TestFieldPage> {
  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: controller,
      physics: NeverScrollableScrollPhysics(),
      children: user.getSelectSex == 0
          ? <Widget>[
              TestPage(
                title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
                question: wq1,
              ),
              TestPage(
                title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
                question: wq2,
              ),
              TestPage(
                title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
                question: wq3,
              ),
              TestPage(
                title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
                question: wq4,
              ),
              TestPage(
                title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
                question: wq5,
              ),
              WarningPage(
                title: 'TEST',
                desc: 'Dikotik cümle tanımlama testine başlıyoruz',
                desc2: Center(),
              ),
              TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq6,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq7,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq8,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq9,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq10,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq11,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq12,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq13,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq14,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq15,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq16,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq17,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq18,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq19,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq20,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq21,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq22,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq23,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq24,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq25,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq26,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq27,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq28,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq29,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: wq30,
              ),
  
              WarningPage(
                title: 'Sonuclar',
                desc: 'Testi başarı ile tamamladınız',
                desc2: Center(
                  child: Column(
                    children: <Widget>[
                      Text('Sol kulak skoru:% ${user.leftScore}'),
                      Text('Sag kulak skoru:% ${user.getRightScore}'),
                      Text(
                          'Her iki Sol kulak skoru:% ${user.getBothLeftScore}'),
                      Text(
                          'Her iki Sag kulak skoru:% ${user.getBothRightScore}'),
                    ],
                  ),
                ),
                page: MaterialPageRoute(
                  builder: (context) => EntryPage(),
                ),
              )
            ]
          : <Widget>[
              TestPage(
                title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
                question: mq1,
              ),
              TestPage(
                title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
                question: mq2,
              ),
              TestPage(
                title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
                question: mq3,
              ),
              TestPage(
                title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
                question: mq4,
              ),
              TestPage(
                title: 'DİKKATLİCE  DİNLEYİN (Alıştırma)',
                question: mq5,
              ),
              WarningPage(
                title: 'TEST',
                desc: 'Dikotik cümle tanımlama testine başlıyoruz',
                desc2: Center(),
              ),
              TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq6,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq7,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq8,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq9,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq10,
              ),
              TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq11,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq12,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq13,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq14,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq15,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq16,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq17,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq18,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq19,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq20,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq21,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq22,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq23,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq24,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq25,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq26,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq27,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq28,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq29,
              ),TestPage(
                title: 'DİKKATLİCE  DİNLEYİN',
                question: mq30,
              ),
              WarningPage(
                title: '',
                desc: 'Testi başarı ile tamamladınız',
                desc2: Center(child: Text('Sonuçları görmek için devam ediniz...', style: TextStyle(fontSize: 18),),),
                page: MaterialPageRoute(
                  builder: (context) => ResultPage(),
                ),
              )
            ],
    );
  }
}

  // code inserted for choosing questions randomly
  // to create the array elements randomly use the dart:math module
  // -----     CODE TO GENERATE ARRAY RANDOMLY

  // import 'dart:math';

  //   var random_array;
  //   var distinctIds = [];
  //   var rand = new Random();
  //     for (int i = 0; ;) {
  //     distinctIds.add(rand.nextInt(10));
  //       random_array = distinctIds.toSet().toList();
  //       if(random_array.length < 10){
  //         continue;
  //       }else{
  //         break;
  //       }
  //     }
  //   print(random_array);

  // ----- END OF CODE