import 'package:dikotik_app/pages/entry_page.dart';
import 'package:dikotik_app/pages/result_page.dart';
import 'package:dikotik_app/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'homeScreen',
      routes: {
        'homeScreen': (context) => EntryPage(),
        'resultPage': (context) => ResultPage(),
      },
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Splashscreen());
  }
}
