import 'package:flutter/material.dart';

import 'pages/entry_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white, 
      home: EntryPage());
  }
}
