import 'package:flutter/material.dart';

class HomeScreenController extends ChangeNotifier {
  //
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  //
  PageController _controller = PageController();
  PageController get controller => _controller;

  //
  updateController(int page) {
    _currentIndex = page;
    _controller.jumpToPage(page);
    notifySetState();
  }
  //

  //
  notifySetState() {
    notifyListeners();
  }
}
