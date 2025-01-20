import 'package:flutter/material.dart';
import 'package:health_app/providers%20%20/add_results_provider.dart';
import 'package:health_app/providers%20%20/text_data_provider.dart';
import 'package:health_app/constants/constant.dart';
import 'package:health_app/data/data.dart';
import 'package:health_app/models/result_card/result_card_model.dart';
import 'package:health_app/screnns/add_results_screen/Input_of_Indicators.dart';
import 'package:health_app/screnns/add_results_screen/hand.dart';
import 'package:health_app/screnns/add_results_screen/health_condition.dart';
import 'package:health_app/screnns/add_results_screen/medicine.dart';
import 'package:health_app/screnns/add_results_screen/times_of_day.dart';
import 'package:health_app/screnns/settings_screen/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsProvider = context.watch<SettingsProvider>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.only(top: 41),
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 26, right: 26),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 36),
                  child: Text("Новое измерение",
                      style: TextStyle(color: color_100, fontSize: 20)),
                ),
                const InputOfIndicators(),
                Expanded(
                  child: ListView(
                    children: [
                      Visibility(
                          visible: settingsProvider.yesNoStatus,
                          child: const HealthCondition()),
                      Visibility(
                          visible: settingsProvider.yesNoDay,
                          child: const TimesOfDay()),
                      Visibility(
                          visible: settingsProvider.yesNoHand,
                          child: const Hand()),
                      const Medicine(),
                      const ButtonAddResult(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonAddResult extends StatelessWidget {
  const ButtonAddResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final data = context.read<AddResultsProvider>();
    final dataTextProvider = context.read<TextDataProvider>();
    final databaseProvider = context.read<DatabaseProvider>();

    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton.icon(
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(color_100)),
        onPressed: () {
          databaseProvider.addCardHealthBox(DataResultCardModel(
            sis: dataTextProvider.textSisData.text,
            dis: dataTextProvider.textDisData.text,
            puls: dataTextProvider.textPulsData.text,
            iconStatus: data.smileyText,
            iconDay: data.dayText,
            medicineText: dataTextProvider.textDataMedicine.text,
            date: DateTime.now(),
            hand: data.iconsHand,
          ));

          dataTextProvider.textDisData.clear();
          dataTextProvider.textSisData.clear();
          dataTextProvider.textPulsData.clear();
          dataTextProvider.textDataMedicine.clear();
          // обновление
          data.updateDate();
          data.tabBotton = false;

          // вернуться назад

          Navigator.pop(context);
        },
        icon: Icon(Icons.add_circle, color: bg),
        label: Text(
          "Сохранить",
          style: TextStyle(color: bg, fontSize: 18),
        ),
      ),
    );
  }
}
