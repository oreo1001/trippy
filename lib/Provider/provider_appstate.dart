import 'package:flutter/material.dart';

class ProviderAppstate with ChangeNotifier {
  // MainScreen 번호
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void updateSelectedIndex(int updatedSelectedIndex) {
    _selectedIndex = updatedSelectedIndex;
    notifyListeners();
  }
}
