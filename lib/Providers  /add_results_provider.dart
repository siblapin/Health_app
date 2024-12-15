import 'package:flutter/material.dart';

class AddResultsProvider extends ChangeNotifier {
  String pills = 'assets/icons/pill.svg';
  String hand = 'assets/icons/pill.svg';
  int sis = 90;
  int dis = 90;
  int puls = 90;
  int smileyInt = 0; // индикатор иконок смайликов самочувствия
  int dayInt = 0; // индикатор иконок время суток
  bool tabBotton = false; // переменная кнопки добавить лекарства
  int handBotton = 0; // переменная кнопки активировать руку измерения пульса
  bool screenList = true;

// функция иконок смайликов самочувствия
  Future<void> smileyIntFunc(int a) async {
    smileyInt = a;
    notifyListeners();
  }

// функция иконок время суток
  Future<void> timesOfdayIntFunc(int a) async {
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
