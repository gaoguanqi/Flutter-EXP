import 'package:flutter/material.dart';
import 'package:flutter_app/app/widget/app_bar_widget.dart';
class CommonPage extends StatefulWidget{
  @override
  _CommonPageState createState() => _CommonPageState();
}

class _CommonPageState extends State<CommonPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleText: 'common',
        titleAction: <Widget>[],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('text'

        ),
      ),
    );
  }

}