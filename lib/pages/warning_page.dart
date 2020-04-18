import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/bloc/timer_bloc.dart';

PageController controllerWarning = new PageController(initialPage: 0, keepPage: false, viewportFraction: 1);

class WarningPage extends StatefulWidget {

  @override
  _WarningPageState createState() => _WarningPageState();
}

class _WarningPageState extends State<WarningPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
        child: PageView(
            scrollDirection: Axis.horizontal,
            controller: controllerWarning,
            children: <Widget>[
              buildWarningPageBody('BİLGİLENDİRME', 'Kulaklığınızı sağ ve sol kulak olarak taktıgınızdan emin olunuz.'),
              buildWarningPageBody('BİLGİLENDİRME', 'Bu test 35 sorudan oluşmaktadır. İlk 5 soru kullanıcıların teste alışması için oluşturulmuştur. '	
                            'Testte her iki kulağınıza aynı anda sayılar gelecek olup sizden sadece verilen yönlendirmelere göre doğru sayı seçimi yapılması istenmektedir.',	),
            ],
        ),
    );
  }

  // PageView(
            //   physics: NeverScrollableScrollPhysics(),
            //   scrollDirection: Axis.horizontal,
            //   controller: controllerWarning,
            //   children: <Widget>[
            //     WarningPage(	
            //         title: 'BİLGİLENDİRME',	
            //         desc:	
            //             'Kulaklığınızı sağ ve sol kulak olarak taktıgınızdan emin olunuz.',	
            //         desc2: Center()),	
            //     WarningPage(	
            //         title: 'BİLGİLENDİRME',	
            //         desc:	
            //             'Bu test 35 sorudan oluşmaktadır. İlk 5 soru kullanıcıların teste alışması için oluşturulmuştur. '	
            //             'Testte her iki kulağınıza aynı anda sayılar gelecek olup sizden sadece verilen yönlendirmelere göre doğru sayı seçimi yapılması istenmektedir.',	
            //         desc2: Center()),	
            //     WarningPage(	
            //       title: 'BİLGİLENDİRME',	
            //       desc: '',	
            //       desc2: Center(	
            //         child: RichText(	
            //           textAlign: TextAlign.center,	
            //           text: TextSpan(children: <TextSpan>[	
            //             TextSpan(	
            //                 text:	
            //                     'Test sırasında aynı anda her iki kulağınıza sayılar gelecek. Sizden,',	
            //                 style: TextStyle(color: Colors.black, fontSize: 18)),	
            //             TextSpan(	
            //                 text: '\n\n1) Sadece sağ kulağınızdan duyduğunuz sayıyı',	
            //                 style: TextStyle(color: Colors.red, fontSize: 18)),	
            //             TextSpan(	
            //                 text: '\n\n2) Sadece sol kulağınızdan duyduğunuz sayıyı',	
            //                 style: TextStyle(color: Colors.red, fontSize: 18)),	
            //             TextSpan(	
            //                 text:	
            //                     '\n\n3) Her iki kulağınızdan duyduğunuz sayıları seçmeniz istenecektir.',	
            //                 style: TextStyle(color: Colors.red, fontSize: 18)),	
            //           ]),	
            //         ),	
            //       ),	
            //     ),
            //   ],
            // ),

  Widget buildWarningPageBody(String title, String desc) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 120),
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
                style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10,),
            Container(
                width: 250,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: FloatingActionButton.extended(
                  backgroundColor: Colors.lightBlue.shade900,
                  heroTag: '$desc',
                  label: Text(
                    'Tamam',
                    style: paragraphText,
                  ),
                  onPressed: () {
                    if(controllerWarning.page >= 1){
                      BlocProvider.of<TimerBloc>(context).add(Start(duration: 20));
                    }
                    controllerWarning.nextPage(duration: Duration(milliseconds: 300), curve: Curves.linear);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
