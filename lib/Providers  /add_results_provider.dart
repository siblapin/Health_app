import 'package:flutter/material.dart';
import 'package:health_app/constants/constant.dart';

class AddResultsProvider extends ChangeNotifier {
  int smileyInt = 0; // индикатор иконок смайликов самочувствия
  String smileyText = '';
  String dayText = '';
  int dayInt = 0; // индикатор иконок время суток
  bool tabBotton = false; // переменная кнопки добавить лекарства
  int handBotton = 0; // переменная кнопки активировать руку измерения пульса
  bool screenList = true;
  String smiley = '';
  bool truefalse = false;

  Future<void> updateDate() async {
    smileyInt = 0;
    dayInt = 0;
    handBotton = 0;
    notifyListeners();
  }

// функция иконок смайликов самочувствия
  Future<void> smileyIntFunc(int a) async {
    if (a == 1) {
      smileyText = bad;
    } else if (a == 2) {
      smileyText = depression;
    } else if (a == 3) {
      smileyText = good;
    } else if (a == 4) {
      smileyText = happy;
    }

    smileyInt = a;
    notifyListeners();
  }

// функция иконок время суток
  Future<void> timesOfdayIntFunc(int a) async {
    if (a == 1) {
      dayText = morning;
    } else if (a == 2) {
      dayText = day;
    } else if (a == 3) {
      dayText = night;
    }
    dayInt = a;
    notifyListeners();
  }

  // функция выбора руки
  Future<void> handBottonFunc(int a) async {
    handBotton = a;
    notifyListeners();
  }

// функция кнопки добавить лекарства
  Future<void> tabBottonFunc() async {
    if (tabBotton == true) {
      tabBotton = false;
    } else {
      tabBotton = true;
    }
    notifyListeners();
  }

// функция скрыть/разкрыть лист
  Future<void> screenListFunc() async {
    if (screenList == true) {
      screenList = false;
    } else {
      screenList = true;
    }
    notifyListeners();
  }
}
