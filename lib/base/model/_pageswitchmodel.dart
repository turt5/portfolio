import 'package:flutter/material.dart';


class PageSwitchModel extends ChangeNotifier {
  int _hoveredIndex = -1;
  int _selectedIndex = 0;

  int get hoveredIndex => _hoveredIndex;
  int get selectedIndex => _selectedIndex;

  set hoveredIndex(int value) {
    _hoveredIndex = value;
    notifyListeners();
  }

  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }
}