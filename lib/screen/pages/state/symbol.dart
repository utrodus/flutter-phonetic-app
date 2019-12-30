import 'package:flutter/material.dart';

class Simbol with ChangeNotifier {
  int _currentSymbol = 0;
  int get getCurrentSymbol => _currentSymbol;

  void setCurrentSymbol(int drawer) {
    _currentSymbol = drawer;
    notifyListeners();
  }

}
