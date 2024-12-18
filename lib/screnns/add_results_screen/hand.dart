import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/providers%20%20/add_results_provider.dart';
import 'package:health_app/constants/constant.dart';
import 'package:provider/provider.dart';

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
          HandBottom(hand: handLeft, nohand: nohandLeft, indicator: 1),
          const SizedBox(width: 16),
          HandBottom(hand: handRight, nohand: nohandRight, indicator: 2),
        ],
      )
    ]);
  }
}

class HandBottom extends StatelessWidget {
  const HandBottom(
      {super.key,
      required this.hand,
      required this.nohand,
      required this.indicator});
  final int indicator;
  final String hand;
  final String nohand;
  @override
  Widget build(BuildContext context) {
    final handBotton = context.watch<AddResultsProvider>();
    return GestureDetector(
      onTap: () {
        handBotton.handBottonFunc(indicator);
      },
      child: SizedBox(
        width: 48,
        height: 48,
        child: (handBotton.handBotton == indicator)
            ? SvgPicture.asset(handLeft, height: 24, width: 24)
            : SvgPicture.asset(nohandLeft, height: 24, width: 24),
      ),
    );
  }
}
