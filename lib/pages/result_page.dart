import 'package:dikotik_app/pages/style/background.dart';
import 'package:dikotik_app/pages/widgets/bloc/timer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'get_information_page.dart';
import 'style/text_style.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Background(),
            _buildResult(),
          ],
        ));
  }

  Widget _buildResult() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 120.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ad/Soyad: ${user.getName == '' ? "belirtilmedi" : user.getName}',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Cinsiyet: ${user.getSex == '' ? "belirtilmedi" : user.getSex}',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Yaş: ${user.getAge == '' ? "belirtilmedi" : user.getAge}',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Directed Report Sol Kulak % ${user.leftScore}',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Directed Report Sağ Kulak:% ${user.getRightScore}',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Free Report Sol Kulak Yüzdesi:% ${user.getBothLeftScore}',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Free Report Sağ Kulak Yüzdesi:% ${user.getBothRightScore}',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  width: 250,
                  child: FloatingActionButton.extended(
                    label: Text(
                      'Başa Dön',
                      style: paragraphText,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'homeScreen');
                      BlocProvider.of<TimerBloc>(context).add(Pause());
                      // BlocProvider.of<TimerBloc>(context).add(Pause());
                      // Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => EntryPage()),
                      //   (Route<dynamic> route) => false,
                      // );
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }
}
