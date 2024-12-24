import 'package:flutter/material.dart';
import 'package:health_app/data/data.dart';

class BoardHomeProvider extends ChangeNotifier {
  late var smileyTextBoard = '';
  String dayText = '';
  String pill = '';

  Future<void> boardHomeFunc() async {
    smileyTextBoard = resultCard.first.iconStatus;
    notifyListeners();
  }
}
