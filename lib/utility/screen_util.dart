import 'dart:core';
import 'dart:ui';

import 'package:flutter/widgets.dart';

class ViewSize {
  static Size _scSize;
  static double _scHeight;
  static double _scWidth;

  static initScreen(BuildContext context) {
    _scSize = MediaQuery.of(context).size;
    _scHeight = _scSize.height;
    _scWidth = _scSize.width;
  }

  static get sHeight => _scHeight;
  static get sWidth => _scWidth;
}
