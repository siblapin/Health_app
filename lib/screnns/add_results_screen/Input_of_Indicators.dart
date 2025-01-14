//Блок ввод показателей СИС ДИД ПУЛЬС
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_app/providers%20%20/text_data_provider.dart';
import 'package:health_app/constants/constant.dart';

import 'package:provider/provider.dart';

class InputOfIndicators extends StatelessWidget {
  const InputOfIndicators({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, bottom: 16),
      width: 301,
      height: 130,
      decoration: BoxDecoration(
          color: bg, borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding:
            const EdgeInsets.only(right: 20, left: 20, top: 16, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text("ДИС", style: TextStyle(fontSize: 14, color: text_color2)),
                Text("мм рт. ст.",
                    style: TextStyle(fontSize: 12, color: color_40)),
                Container(
                    margin: const EdgeInsets.only(top: 4),
                    width: 60,
                    child: TextData(
                      textData: context.watch<TextDataProvider>().textSisData,
                    ))
              ],
            ),
            const SizedBox(width: 32),
            Column(
              children: [
                Text("CИС", style: TextStyle(fontSize: 14, color: text_color2)),
                Text("мм рт. ст.",
                    style: TextStyle(fontSize: 12, color: color_40)),
                Container(
                    margin: const EdgeInsets.only(top: 4),
                    width: 60,
                    child: TextData(
                      textData: context.watch<TextDataProvider>().textDisData,
                    ))
              ],
            ),
            const SizedBox(width: 32),
            Column(
              children: [
                Text("ПУЛЬС",
                    style: TextStyle(fontSize: 14, color: text_color2)),
                Text("уд/мин", style: TextStyle(fontSize: 12, color: color_40)),
                Container(
                    margin: const EdgeInsets.only(top: 4),
                    width: 60,
                    child: TextData(
                      textData: context.watch<TextDataProvider>().textPulsData,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TextData extends StatelessWidget {
  const TextData({super.key, required this.textData});
  final TextEditingController textData;
  @override
  Widget build(BuildContext context) {
    var textnext = FocusScope.of(context);
    return TextField(
      inputFormatters: [LengthLimitingTextInputFormatter(3)],
      keyboardType: TextInputType.number,
      cursorColor: color_100,
      onChanged: (text) {
        if (text.length == 3) {
          textnext.nextFocus();
        }
      },
      controller: textData,
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
    );
  }
}
