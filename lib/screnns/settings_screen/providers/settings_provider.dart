import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  bool yesnoGender = true;
  bool yesNoStatus = true;
  bool yesNoDay = true;
  bool yesNoHand = true;
  SettingsProvider() {
    getPrefsSettings();
  }

  Future<void> yesNo() async {
    final prefs = await SharedPreferences.getInstance();

    if (yesnoGender == true) {
      yesnoGender = false;
      notifyListeners();
      prefs.setBool('yesnoGender', yesnoGender);
    } else {
      yesnoGender = true;
      notifyListeners();
      prefs.setBool('yesnoGender', yesnoGender);
    }
  }

  Future<void> yesNoStatusF(bool a, int b) async {
    final prefs = await SharedPreferences.getInstance();
    switch (b) {
      case 1:
        if (yesNoStatus == true) {
          yesNoStatus = false;
          notifyListeners();
          prefs.setBool('yesNoStatus', yesNoStatus);
        } else {
          yesNoStatus = true;
          notifyListeners();
          prefs.setBool('yesNoStatus', yesNoStatus);
        }
        break;
      case 2:
        if (yesNoDay == true) {
          yesNoDay = false;
          notifyListeners();
          prefs.setBool('yesNoDay', yesNoDay);
        } else {
          yesNoDay = true;
          notifyListeners();
          prefs.setBool('yesNoDay', yesNoDay);
        }
        break;
      case 3:
        if (yesNoHand == true) {
          yesNoHand = false;
          notifyListeners();
          prefs.setBool('yesNoHand', yesNoHand);
        } else {
          yesNoHand = true;
          notifyListeners();
          prefs.setBool('yesNoHand', yesNoHand);
        }
        break;
    }

    notifyListeners();
  }

  Future<void> getPrefsSettings() async {
    final prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey('yesnoGender')) {
      yesnoGender = prefs.getBool("yesnoGender")!;
      notifyListeners();
    }
    if (prefs.containsKey('yesNoStatus')) {
      yesNoStatus = prefs.getBool("yesNoStatus")!;
      notifyListeners();
    }
    if (prefs.containsKey('yesNoDay')) {
      yesNoDay = prefs.getBool("yesNoDay")!;
      notifyListeners();
    }
    if (prefs.containsKey('yesNoHand')) {
      yesNoHand = prefs.getBool("yesNoHand")!;
      notifyListeners();
    }
  }
}
