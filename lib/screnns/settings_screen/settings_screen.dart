import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants/constant.dart';
import 'model/Input_of_Indicators_model.dart';
import 'model/age_human_model.dart';
import 'model/gender_model.dart';
import 'model/status_model.dart';
import 'providers/settings_provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsProvider = context.watch<SettingsProvider>();
    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  alignment: AlignmentDirectional.bottomEnd,
                  width: double.infinity,
                  height: 50,
                  child: Text("Назад",
                      style: TextStyle(color: color_100, fontSize: 16)),
                )),
            Text("Настройки", style: TextStyle(color: color_100, fontSize: 20)),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ListView(
                  children: [
                    const SizedBox(height: 20),
                    const GenderBottons(),
                    const SizedBox(height: 20),
                    const Age(),
                    const SizedBox(height: 20),
                    const InputOfIndicatorsSettings(),
                    const SizedBox(height: 20),
                    StatusModel(
                      nameTitle: 'Самочувствие',
                      yesNoStatus: settingsProvider.yesNoStatus,
                      indicatorStatus: 1,
                      yesNoStatusProvider: settingsProvider.yesNoStatus,
                    ),
                    const SizedBox(height: 10),
                    StatusModel(
                      nameTitle: 'Время суток',
                      yesNoStatus: settingsProvider.yesNoDay,
                      indicatorStatus: 2,
                      yesNoStatusProvider: settingsProvider.yesNoDay,
                    ),
                    const SizedBox(height: 10),
                    StatusModel(
                      nameTitle: 'Рука для измерения',
                      yesNoStatus: settingsProvider.yesNoHand,
                      indicatorStatus: 3,
                      yesNoStatusProvider: settingsProvider.yesNoHand,
                    ),
                    const SizedBox(height: 20),
                    const ButtonSave(),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class ButtonSave extends StatelessWidget {
  const ButtonSave({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton.icon(
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(color_100)),
        onPressed: () {},
        label: Text(
          "Сохранить",
          style: TextStyle(color: bg, fontSize: 18),
        ),
      ),
    );
  }
}
