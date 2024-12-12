//MODEL: показатели СИС ДИД и Пульс
import 'package:flutter/material.dart';
import 'package:health_app/constants/constant.dart';

class SisDisPuls extends StatelessWidget {
  const SisDisPuls(
      {super.key,
      required this.textTitle,
      required this.text,
      required this.inputText,
      required this.widthBox});
  final String textTitle; // ДИС - СИС - ПУЛЬС
  final String text; // мм.рт.ст
  final String inputText; // показатели
  final double widthBox; // размер
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthBox,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textTitle,
            style: TextStyle(fontSize: 12, color: text_color2),
          ),
          const SizedBox(height: 4),
          Text(
            "$inputText $text",
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
