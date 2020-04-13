import 'package:dikotik_app/data/numbers.dart';
import 'package:dikotik_app/data/question.dart';
import 'package:dikotik_app/data/words.dart';
import 'package:dikotik_app/pages/style/background.dart';
import 'package:dikotik_app/pages/widgets/bloc/timer_bloc.dart';
import 'package:dikotik_app/pages/widgets/ticker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import 'get_information_page.dart';

PageController controller = PageController(initialPage: 0, keepPage: false);

class TestFieldPage extends StatefulWidget {
  @override
  _TestFieldPageState createState() => _TestFieldPageState();
}

class _TestFieldPageState extends State<TestFieldPage> with AutomaticKeepAliveClientMixin<TestFieldPage>{
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);


    return MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Color.fromRGBO(109, 234, 255, 1),
        accentColor: Color.fromRGBO(72, 74, 126, 1),
        brightness: Brightness.dark,
      ),
      title: 'Flutter Timer',
      home: BlocProvider(
        create: (context) => TimerBloc(ticker: Ticker()),
        child: Test(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class Test extends StatelessWidget {
   static const TextStyle timerTextStyle = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
  );
  const Test({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background(),
          Center(
                  child: BlocBuilder<TimerBloc, TimerState>(
                    builder: (context, state) {
                      return PageView(
                          scrollDirection: Axis.horizontal,
                          controller: controller,
                          physics: NeverScrollableScrollPhysics(),
                          children: user.getSelectText == '2'
                              ? user.getSelectSex == 0 ? listWomanSentences() : listManSentences()
                              : user.getSelectText == '1'
                                  ? user.getSelectSex == 0 ? listWomanNumber() : listManNumber()
                                  : user.getSelectText == '3'
                                      ? user.getSelectSex == 0 ? listWomanWord() : listManWord()
                                      : null,
                        );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
