import 'package:dikotik_app/data/answers.dart';
import 'package:dikotik_app/pages/style/text_style.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  final String title;
  final String desc;
  final List<Answer> answers;

  const TestPage({Key key, this.title, this.desc, this.answers})
      : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
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
                  widget.desc,
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
                itemCount: widget.answers.length,
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
                          color: Colors.white,
                          child: Text(
                            widget.answers[index].title,
                            style: paragraphText,
                          ),
                          onPressed: () {
                            if (widget.answers[index].value == 1.0) {
                              //do some
                            } else {
                              //do some
                            }
                          },
                        ),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget buildAnswer(List<Answer> text) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          width: 250,
          decoration: BoxDecoration(border: Border.all()),
          child: FlatButton(
            color: Colors.white,
            child: Text(
              text[0].title,
              style: paragraphText,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
