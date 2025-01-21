import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/constant.dart';

class InputOfIndicatorsSettings extends StatelessWidget {
  const InputOfIndicatorsSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            "Ваше нормальное давление",
            style: TextStyle(color: color_100, fontSize: 16),
            textAlign: TextAlign.start,
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: color_100,
              borderRadius: const BorderRadius.all(Radius.circular(30))),
          child: const Padding(
            padding: EdgeInsets.only(right: 20, left: 20, top: 5, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InputModel(
                    nameInput: 'ДИС',
                    counterInput: InputCounterModel(),
                    nameText: 'мм рт. ст'),
                Expanded(child: SizedBox()),
                InputModel(
                    nameInput: 'СИС',
                    counterInput: InputCounterModel(),
                    nameText: 'мм рт. ст'),
                Expanded(child: SizedBox()),
                InputModel(
                    nameInput: 'ПУЛЬС',
                    counterInput: InputCounterModel(),
                    nameText: 'уд/мин'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class InputModel extends StatelessWidget {
  final String nameInput;
  final String nameText;
  final Widget counterInput;
  const InputModel({
    required this.nameInput,
    required this.counterInput,
    required this.nameText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          nameInput,
          style: TextStyle(color: bg, fontSize: 16),
        ),
        counterInput,
        Text(nameText, style: TextStyle(fontSize: 12, color: color_40)),
      ],
    );
  }
}

class InputCounterModel extends StatelessWidget {
  const InputCounterModel({super.key});

  @override
  Widget build(BuildContext context) {
    var ageText = TextEditingController();
    return SizedBox(
      width: 70,
      child: TextField(
        inputFormatters: [LengthLimitingTextInputFormatter(3)],
        keyboardType: TextInputType.number,
        cursorColor: color_100,
        onChanged: (text) {
          if (text.length == 3) {}
        },
        controller: ageText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: color_40, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: color_100, width: 1.5),
          ),
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}
