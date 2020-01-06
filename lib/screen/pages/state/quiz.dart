import 'package:flutter/material.dart';

class Quiz with ChangeNotifier {
  List _shuffle;
  int _score = 0;
  List get getCurrentShuffle => _shuffle;
  int get getCurrentScore => _score;

  void setShuffle(List shuffle) {
    _shuffle = (shuffle);
    notifyListeners();
  }

  addScore() {
    _score++;
    notifyListeners();
  }

  resetScore(){
    _score = 0;
    notifyListeners();
  }
}
