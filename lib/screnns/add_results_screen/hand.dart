import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//Блок выбора руки измерения давления

class Hand extends StatelessWidget {
  const Hand({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
          width: double.infinity,
          child: Text(
            "Рука",
            textAlign: TextAlign.start,
          )),
      const SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 48,
            height: 48,
            child: SvgPicture.asset('assets/icons/ion_hand-right.svg',
                height: 24, width: 24),
          ),
          const SizedBox(width: 16),
          SizedBox(
            width: 48,
            height: 48,
            child: SvgPicture.asset('assets/icons/ion_hand-right.svg',
                height: 24, width: 24),
          ),
        ],
      )
    ]);
  }
}
