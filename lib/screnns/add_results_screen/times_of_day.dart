//Блок время суток
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/constants/constant.dart';

class TimesOfDay extends StatelessWidget {
  const TimesOfDay({
    super.key,
  });

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
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 15, top: 4, bottom: 4),
            decoration: BoxDecoration(
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
