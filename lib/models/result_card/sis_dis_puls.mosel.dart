//MODEL: показатели СИС ДИД и Пульс
import 'package:flutter/material.dart';
import 'package:health_app/constants/constant.dart';

class SisDisPuls extends StatelessWidget {
  const SisDisPuls({
    super.key,
    required this.textTitle,
    required this.text,
    required this.inputText,
  });
  final String textTitle; // ДИС - СИС - ПУЛЬС
  final String text; // мм.рт.ст
  final String inputText; // показатели

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(textTitle,
              style: TextStyle(fontSize: 14, color: text_color2),
              overflow: TextOverflow.ellipsis),
          Text(inputText,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 22, color: text_color)),
          Text(text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: color_40)),
        ],
      ),
    );
  }
}
