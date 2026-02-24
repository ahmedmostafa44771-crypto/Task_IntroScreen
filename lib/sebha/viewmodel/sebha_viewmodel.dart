import 'package:flutter/material.dart';

class TasbeehViewModel extends ChangeNotifier {
  int count = 0;
  final String tasbeehText = "سبحان الله";

  void increment() {
    count++;
    notifyListeners();
  }

  void reset() {
    count = 0;
    notifyListeners();
  }
}