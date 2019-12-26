import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static var screenWidth;
  static var screenHeight;
  static var horizontal;
  static var vertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    horizontal = screenWidth / 100;
    vertical = screenHeight / 100;
  }
}