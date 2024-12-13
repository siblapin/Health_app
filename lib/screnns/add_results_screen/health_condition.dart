import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//Блок выбора самочувствия "Плохо - Недомагание - Хорошо - Отлично"

class HealthCondition extends StatefulWidget {
  const HealthCondition({
    super.key,
  });

  @override
  State<HealthCondition> createState() => _HealthConditionState();
}

class _HealthConditionState extends State<HealthCondition> {
  int smiley = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
          width: double.infinity,
          child: Text(
            "Самочувствие",
            textAlign: TextAlign.start,
          )),
      const SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                smiley = 1;
              });
            },
            child: SizedBox(
              width: 75,
              height: 50,
              child: Column(
                children: [
                  const SizedBox(height: 4),
                  (smiley == 1)
                      ? SvgPicture.asset(
                          'assets/icons/bad.svg',
                          height: 24,
                          width: 24,
                        )
                      : SvgPicture.asset(
                          'assets/icons/bad.svg',
                          height: 24,
                          width: 24,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.color),
                        ),
                  Text("Плохо",
                      style: TextStyle(
                          fontSize: 12,
                          color: (smiley == 1) ? Colors.black : Colors.grey))
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                smiley = 2;
              });
            },
            child: SizedBox(
                width: 90,
                height: 50,
                child: Column(children: [
                  const SizedBox(height: 4),
                  (smiley == 2)
                      ? SvgPicture.asset('assets/icons/depression.svg',
                          height: 24, width: 24)
                      : SvgPicture.asset('assets/icons/depression.svg',
                          height: 24,
                          width: 24,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.color)),
                  Text("Недомогание",
                      style: TextStyle(
                          fontSize: 12,
                          color: (smiley == 2) ? Colors.black : Colors.grey))
                ])),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                smiley = 3;
              });
            },
            child: SizedBox(
                width: 90,
                height: 50,
                child: Column(children: [
                  const SizedBox(height: 4),
                  (smiley == 3)
                      ? SvgPicture.asset('assets/icons/good.svg',
                          height: 24, width: 24)
                      : SvgPicture.asset('assets/icons/good.svg',
                          height: 24,
                          width: 24,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.color)),
                  Text("Недомогание",
                      style: TextStyle(
                          fontSize: 12,
                          color: (smiley == 3) ? Colors.black : Colors.grey))
                ])),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                smiley = 4;
              });
            },
            child: SizedBox(
                width: 90,
                height: 50,
                child: Column(children: [
                  const SizedBox(height: 4),
                  (smiley == 4)
                      ? SvgPicture.asset('assets/icons/happy.svg',
                          height: 24, width: 24)
                      : SvgPicture.asset('assets/icons/happy.svg',
                          height: 24,
                          width: 24,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.color)),
                  Text("Недомогание",
                      style: TextStyle(
                          fontSize: 12,
                          color: (smiley == 4) ? Colors.black : Colors.grey))
                ])),
          ),
        ],
      )
    ]);
  }
}
