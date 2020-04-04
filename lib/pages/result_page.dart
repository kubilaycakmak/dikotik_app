import 'package:dikotik_app/pages/entry_page.dart';
import 'package:flutter/material.dart';

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          title: Text('Sonuç'),
          backgroundColor: Colors.indigo[900],
          elevation: 0,
          leading: Icon(Icons.not_interested, color: Colors.transparent,),
        ),
      ),
      backgroundColor: Colors.white,
      body: _buildResult());
  }

  Center _buildResult() {
    return Center(
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(user.getName),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(user.getSex),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Directed Report Sol Kulak % ${user.leftScore}', style: TextStyle(fontSize: 18),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Directed Report Sağ Kulak:% ${user.getRightScore}', style: TextStyle(fontSize: 18),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              'Free Report Sol Kulak Yüzdesi:% ${user.getBothLeftScore}', style: TextStyle(fontSize: 18),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              'Free Report Sağ Kulak Yüzdesi:% ${user.getBothRightScore}', style: TextStyle(fontSize: 18),),
        ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(), color: Colors.indigo[900]),
                    child: FlatButton(
                      color: Colors.indigo[800],
                      child: Text(
                        'Tamam',
                        style: paragraphText,
                      ),
                      onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context, MaterialPageRoute(builder: (context) => EntryPage()), (Route<dynamic> route) => false,);
                      },
                    )),
            )
      ],
    ),
  );
  }
}
