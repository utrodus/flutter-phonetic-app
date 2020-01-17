import 'package:flutter/material.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';

class Simbol with ChangeNotifier {
  int _currentSymbol = 0;
  int get getCurrentSymbol => _currentSymbol;

  // GifController _controller;

  // GifController get getController => _controller;

  // setController(GifController controller) {
  //   _controller = controller;
  //   notifyListeners();
  // }

  // void playGifImage(double frame) {
  //   _controller.value = 0;
  //   _controller.animateTo(frame, duration: Duration(milliseconds: 2000));
  //   notifyListeners();
  // }

  void setCurrentSymbol(int symbol) {
    _currentSymbol = symbol;
    notifyListeners();
  }
}
