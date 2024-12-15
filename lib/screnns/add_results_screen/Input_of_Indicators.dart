//Блок ввод показателей СИС ДИД ПУЛЬС
import 'package:flutter/material.dart';
import 'package:health_app/constants/constant.dart';

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
        padding: const EdgeInsets.only(right: 20, left: 20, top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text("ДИС", style: TextStyle(fontSize: 14, color: text_color2)),
                Text("мм рт. ст.",
                    style: TextStyle(fontSize: 12, color: color_40)),
                const SizedBox(
                    width: 50,
                    child: TextField(
                      decoration: InputDecoration(fillColor: Colors.blue),
                    ))
              ],
            ),
            const SizedBox(width: 32),
            Column(
              children: [
                Text("CИС", style: TextStyle(fontSize: 14, color: text_color2)),
                Text("мм рт. ст.",
                    style: TextStyle(fontSize: 12, color: color_40)),
              ],
            ),
            const SizedBox(width: 32),
            Column(
              children: [
                Text("ПУЛЬС",
                    style: TextStyle(fontSize: 14, color: text_color2)),
                Text("у/мин", style: TextStyle(fontSize: 12, color: color_40)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
