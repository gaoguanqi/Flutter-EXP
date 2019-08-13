import 'package:flutter/material.dart';

import 'app/constants.dart';
import 'app/pages/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      theme:ThemeData(
        primarySwatch: Colors.red
      ),
      home: HomePage(),
    );
  }
}