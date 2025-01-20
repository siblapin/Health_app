import 'package:flutter/material.dart';
import 'package:health_app/screnns/settings_screen/providers/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../../constants/constant.dart';

class GenderBottons extends StatelessWidget {
  const GenderBottons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final settingsProvider = context.watch<SettingsProvider>();
    bool a = true;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            "Укажите ваш пол",
            style: TextStyle(color: color_100, fontSize: 16),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          height: 60,
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => settingsProvider.yesNo(a),
                  child: (settingsProvider.yesnoGender == true)
                      ? Container(
                          decoration: BoxDecoration(
                              color: color_100,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30))),
                          margin: const EdgeInsets.all(2),
                          child: Center(
                              child: Text("Мужской",
                                  style: TextStyle(color: bg, fontSize: 18))))
                      : Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          margin: const EdgeInsets.all(2),
                          child: const Center(
                              child: Text("Мужской",
                                  style: TextStyle(fontSize: 18)))),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => settingsProvider.yesNo(a),
                  child: (settingsProvider.yesnoGender == false)
                      ? Container(
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: color_100,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30))),
                          child: Center(
                              child: Text("Женский",
                                  style: TextStyle(color: bg, fontSize: 18))))
                      : Container(
                          margin: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: const Center(
                              child: Text("Женский",
                                  style: TextStyle(fontSize: 18)))),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
