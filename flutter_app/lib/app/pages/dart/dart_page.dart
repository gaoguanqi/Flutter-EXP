import 'package:flutter/material.dart';
import 'package:flutter_app/app/widget/app_bar_widget.dart';
class DartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleText: 'common',
        titleAction: <Widget>[],
      ),
      body: Text('text'),
    );
  }
}