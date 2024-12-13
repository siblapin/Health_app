//Блок время суток
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/constants/constant.dart';

class TimesOfDay extends StatefulWidget {
  const TimesOfDay({
    super.key,
  });

  @override
  State<TimesOfDay> createState() => _TimesOfDayState();
}

class _TimesOfDayState extends State<TimesOfDay> {
  int day = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
          width: double.infinity,
          child: Text(
            "Время",
            textAlign: TextAlign.start,
          )),
      const SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                day = 1;
              });
            },
            child: Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 15, top: 4, bottom: 4),
              decoration: BoxDecoration(
                  color: (day == 1) ? color_100 : Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: color_100)),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/morning.svg',
                      height: 24, width: 24),
                  const SizedBox(width: 12),
                  const Text("Утро", style: TextStyle(fontSize: 12))
                ],
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 15, top: 4, bottom: 4),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: color_100)),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/day.svg', height: 24, width: 24),
                const SizedBox(width: 12),
                const Text("День", style: TextStyle(fontSize: 12))
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 15, top: 4, bottom: 4),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: color_100)),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/night.svg',
                    height: 24, width: 24),
                const SizedBox(width: 12),
                const Text("Вечер", style: TextStyle(fontSize: 12))
              ],
            ),
          ),
        ],
      ),
      const SizedBox(height: 12),
    ]);
  }
}
