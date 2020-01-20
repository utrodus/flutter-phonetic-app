import 'package:flutter/material.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';

class Simbol with ChangeNotifier {
  int _currentSymbol = 0;
  int _currentWrongContent = 0;
  int _flexcontent = 4;

  int get getCurrentSymbol => _currentSymbol;
  int get getWrongContent => _currentWrongContent;
  int get getFlexContent => _flexcontent;

  void setCurrentSymbol(int symbol) {
    _currentSymbol = symbol;
    notifyListeners();
  }

  void setWrongContent(int wrongcontent) {
    _currentWrongContent = wrongcontent;
    notifyListeners();
  }

  void setCurrentFlex(int flex) {
    _flexcontent = flex;
    notifyListeners();
  }
}
