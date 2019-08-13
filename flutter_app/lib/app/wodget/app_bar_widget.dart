import 'package:flutter/material.dart';

import '../constants.dart';

class MyAppBar extends AppBar {
  final String titleText;
  final List<Widget> titleAction;

  MyAppBar({@required this.titleText, @required this.titleAction});


  @override
  Widget get title => Text(
    titleText,
    style: AppStyles.AppBarStyle,
  );

  @override
  double get elevation => 0.2;

  @override
  bool get centerTitle => true;

  @override
  List<Widget> get actions => titleAction;

}
