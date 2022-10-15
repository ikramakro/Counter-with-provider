import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreenModel with ChangeNotifier {
  static int _count = 0;
  List color = [
    Colors.red,
    Colors.blue,
    Colors.black,
    Colors.blueGrey,
    Colors.brown,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.green,
    Colors.lime,
    Colors.teal
  ];
  int index = Random().nextInt(10);

  void colorfun() {
    switch (_count) {
      case 10:
        {
          index = Random().nextInt(10);
          if (index == index) {}
          break;
        }
      case 100:
        {
          index = Random().nextInt(10);
          break;
        }
      case 1000:
        {
          index = Random().nextInt(10);
          break;
        }
      case 10000:
        {
          index = Random().nextInt(10);
          break;
        }
    }
  }

  int get getColor => color[index];
  int get Count => _count;

  incrementcounter() {
    if (_count < 10) {
      _count++;
    } else if (_count < 100) {
      _count += 10;
    } else if (_count < 1000) {
      _count += 100;
    } else if (_count < 10000) {
      _count += 1000;
    } else if (_count < 10000) {
      _count += 10000;
    } else {
      _count += 100000;
    }
    notifyListeners();
  }

  void countzero() {
    _count = 0;
    notifyListeners();
  }
}
