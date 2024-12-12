//Блок самочувствие
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HealthCondition extends StatelessWidget {
  const HealthCondition({
    super.key,
  });

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
          SizedBox(
            width: 75,
            height: 50,
            child: Column(
              children: [
                const SizedBox(height: 4),
                SvgPicture.asset('assets/icons/bad.svg', height: 24, width: 24),
                const Text("Плохо", style: TextStyle(fontSize: 12))
              ],
            ),
          ),
          SizedBox(
              width: 90,
              height: 50,
              child: Column(children: [
                const SizedBox(height: 4),
                SvgPicture.asset('assets/icons/depression.svg',
                    height: 24, width: 24),
                const Text("Недомогание", style: TextStyle(fontSize: 12))
              ])),
          SizedBox(
            width: 75,
            height: 50,
            child: Column(
              children: [
                const SizedBox(height: 4),
                SvgPicture.asset('assets/icons/good.svg',
                    height: 24, width: 24),
                const Text("Хорошо", style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
          SizedBox(
            width: 75,
            height: 50,
            child: Column(
              children: [
                const SizedBox(height: 4),
                SvgPicture.asset('assets/icons/happy.svg',
                    height: 24, width: 24),
                const Text("Отлично", style: TextStyle(fontSize: 12))
              ],
            ),
          )
        ],
      )
    ]);
  }
}
