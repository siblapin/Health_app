import 'package:flutter/material.dart';
import 'package:health_app/models/result_card/result_card_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DatabaseProvider extends ChangeNotifier {
  late Box<DataResultCardModel> box;

  Future<void> openCardHealthBox() async {
    box = await Hive.openBox('cardHealth');
  }

  void addCardHealthBox(DataResultCardModel dataResultCardModel) {
    box.add(dataResultCardModel);
    notifyListeners();
  }

  void delCardHealth(int index) {
    box.deleteAt(index);
    notifyListeners();
  }
}
