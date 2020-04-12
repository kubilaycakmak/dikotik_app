import 'package:dikotik_app/pages/get_information_page.dart';
import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:flutter/material.dart';


class EntryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            centerTitle: true,
            title: Text('Dikotik Testi'),
            backgroundColor: Colors.indigo[900],
            elevation: 0,
          ),
      backgroundColor: Colors.white,
      body: buildEntryScreen(context),
    );
  }


  Widget buildEntryScreen(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ClipOval(
              clipBehavior: Clip.hardEdge,
              child: Image(
                height: 300,
                image: AssetImage('assets/images/entry.png'),
              ),
            ),
          ),
          Text(
            'DİKOTİK DİNLEME TESTLERİ',
            style: titleText,
          ),
          SizedBox(
            height: 20,
          ),
          buildButtons(context, 'BAŞLA'),
          // Divider(thickness: 2,),
          // Text('Test Sonuçlarım:'),
          // Divider(thickness: 2,),
          // _buildTable()
        ],
      ),
    );
  }

  // Table _buildTable() {
  //   return Table(
  //         border: TableBorder.all(),
  //             children: [
  //               TableRow( children: [
  //                 Column(children:[
  //                   Text('Tek Sol: ')
  //                 ]),
  //                 Column(children:[
  //                   Text('Tek Sağ:')
  //                 ]),
  //                 Column(children:[
  //                   Text('Çift Sol: ')
  //                 ]),
  //                 Column(children:[
  //                   Text('Çift Sağ:')
  //                 ]),
  //               ]),
  //               TableRow( children: [
  //                 Column(children:[
  //                   Text(user.getLeftScore == null ? 'Test edilmedi' : user.getLeftScore.toString())
  //                 ]),
  //                 Column(children:[
  //                   Text(user.getRightScore == null ? 'Test edilmedi' : user.getRightScore.toString())
  //                 ]),
  //                 Column(children:[
  //                   Text(user.getBothLeftScore == null ? 'Test edilmedi' : user.getBothLeftScore.toString())
  //                 ]),
  //                 Column(children:[
  //                   Text(user.getBothRightScore == null ? 'Test edilmedi' : user.getBothRightScore.toString())
  //                 ]),
  //               ]),
  //             ],
  //       );
  // }



  Widget buildButtons(BuildContext context, String title) {
    return Container(
          width: 300,
          decoration:
              BoxDecoration(color: Colors.indigo[900],),
          child: FlatButton(
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            color: Colors.indigo[900],
            child: Text(
              title,
              style: paragraphText,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GetInformationPage()));
            },
          ),
        );
  }
}
