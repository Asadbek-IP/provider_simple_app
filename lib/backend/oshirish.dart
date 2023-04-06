import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Oshirish with ChangeNotifier {
  int son = 0;

  int get getSon => son;

  void increment() {
    son++;
    notifyListeners();
  }

  void kamayish() {
    son--;
    notifyListeners();
  }
}
