import 'package:flutter/foundation.dart';

class CounterNotifier with ChangeNotifier {

  int _count = 0;
  int get count => _count;

  incremenr(){
    _count++;
    notifyListeners();
  }
}