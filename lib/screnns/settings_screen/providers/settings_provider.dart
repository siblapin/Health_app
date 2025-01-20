import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  bool yesnoGender = true;
  bool yesNoStatus = true;
  bool yesNoDay = true;
  bool yesNoHand = true;

  Future<void> yesNo(a) async {
    if (yesnoGender == true) {
      yesnoGender = false;
    } else {
      yesnoGender = true;
    }
    notifyListeners();
  }

  Future<void> yesNoStatusF(bool a, int b) async {
    switch (b) {
      case 1:
        if (yesNoStatus == true) {
          yesNoStatus = false;
        } else {
          yesNoStatus = true;
        }
        break;
      case 2:
        if (yesNoDay == true) {
          yesNoDay = false;
        } else {
          yesNoDay = true;
        }
        break;
      case 3:
        if (yesNoHand == true) {
          yesNoHand = false;
        } else {
          yesNoHand = true;
        }
        break;
    }

    notifyListeners();
  }
}
