import 'package:flutter/material.dart';

class IntroProvider extends ChangeNotifier {
  bool isLastPage = false;
  void lastPage(int index) {
    isLastPage = index == 2;
    notifyListeners();
  }
}