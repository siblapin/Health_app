import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../constants/constant.dart';
import '../providers/settings_provider.dart';

class StatusModel extends StatelessWidget {
  StatusModel({
    required this.nameTitle,
    required this.yesNoStatus,
    required this.indicatorStatus,
    required this.yesNoStatusProvider,
    super.key,
  });
  String nameTitle;
  bool yesNoStatus;
  bool yesNoStatusProvider;
  int indicatorStatus;

  @override
  Widget build(BuildContext context) {
    final settingsProvider = context.watch<SettingsProvider>();
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            nameTitle,
            style: TextStyle(color: color_100, fontSize: 16),
            textAlign: TextAlign.start,
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: SizedBox(
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      margin: const EdgeInsets.all(2),
                      child: const Center(
                          child:
                              Text("иконка", style: TextStyle(fontSize: 18)))),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => settingsProvider.yesNoStatusF(
                        yesNoStatus, indicatorStatus),
                    child: (yesNoStatusProvider == true)
                        ? Container(
                            decoration: BoxDecoration(
                                color: color_100,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30))),
                            margin: const EdgeInsets.all(2),
                            child: Center(
                                child: Text("вкл",
                                    style: TextStyle(color: bg, fontSize: 18))))
                        : Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            margin: const EdgeInsets.all(2),
                            child: const Center(
                                child: Text("вкл",
                                    style: TextStyle(fontSize: 18)))),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => settingsProvider.yesNoStatusF(
                        yesNoStatus, indicatorStatus),
                    child: (yesNoStatusProvider == false)
                        ? Container(
                            decoration: BoxDecoration(
                                color: color_100,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30))),
                            margin: const EdgeInsets.all(2),
                            child: Center(
                                child: Text("выкл",
                                    style: TextStyle(color: bg, fontSize: 18))))
                        : Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            margin: const EdgeInsets.all(2),
                            child: const Center(
                                child: Text("выкл",
                                    style: TextStyle(fontSize: 18)))),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
