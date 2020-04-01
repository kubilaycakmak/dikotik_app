import 'package:dikotik_app/data/question.dart';
import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:dikotik_app/pages/test_field_page.dart';
import 'package:flutter/material.dart';

import 'get_information_page.dart';

class TestPage extends StatefulWidget {
  final String title;
  final Question question;

  const TestPage({Key key, this.title, this.question})
      : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Center(
                child: Text(
                  widget.title,
                  style: titleText,
                ),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Center(
                child: Text(
                  widget.question.title,
                  textAlign: TextAlign.center,
                  style: paragraphText,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 250,
                        decoration: BoxDecoration(border: Border.all()),
                        child: FlatButton(
                          child: Text(
                            widget.question.answer[index].title,
                            style: paragraphText,
                          ),
                          onPressed: !isClicked ? () {
                            setState(() {
                              isClicked = true;
                            });
                            if(widget.question.side == 0){
                              if (widget.question.answer[index].value == 1.0) {
                                user.setLeftScore = user.getLeftScore + 1.0;
                              }
                              else{
                                user.setLeftScore = user.getLeftScore - 1.0;
                              }
                            }else if(widget.question.side == 1){
                              if (widget.question.answer[index].value == 1.0) {
                                user.setRightScore = user.getRightScore + 1.0;
                              }else{
                                user.setRightScore = user.getRightScore - 1.0;
                              }
                            }else{
                              setState(() {
                                isClicked = false;
                              });
                              if (widget.question.answer[index].value == 1.0) {
                                user.setBothScore = user.getBothScore + 1.0;
                                
                              }else{
                                setState(() {
                                  isClicked = true;
                                });
                                user.setBothScore = user.getBothScore - 1.0;
                              }
                          }
                        } : null,
                      ),
                    ),
                  ],
                );
              }),
          ),
          SizedBox(height: 10,),
          Container(
          width: 250,
          decoration: BoxDecoration(border: Border.all(), color: Colors.teal[300]),
          child: FlatButton(
            color: Colors.teal[300],
            child: Text(
              'Sonraki',
              style: paragraphText,
            ),
            onPressed: () {
              controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
              print('both score : ${user.getBothScore}');
              print('left score : ${user.getLeftScore}');
              print('right score : ${user.getRightScore}');
            },
          ),
        ),
        ],
      ),
    );
  }
}