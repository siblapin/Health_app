import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/constants/constant.dart';
import 'package:provider/provider.dart';
import '../../providers  /add_results_provider.dart';

//Блок выбора самочувствия "Плохо - Недомагание - Хорошо - Отлично"

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
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Flexible(
            flex: 1,
            child: SmBotton(icon: bad, textStatus: 'Плохо', indefecator: 1)),
        Flexible(
            flex: 2,
            child: SmBotton(
                icon: depression, textStatus: 'Недомагание', indefecator: 2)),
        Flexible(
            flex: 1,
            child: SmBotton(icon: good, textStatus: 'Хорошо', indefecator: 3)),
        Flexible(
            flex: 1,
            child:
                SmBotton(icon: happy, textStatus: 'Отлично', indefecator: 4)),
      ])
    ]);
  }
}

// Модель
class SmBotton extends StatelessWidget {
  const SmBotton(
      {super.key,
      required this.icon,
      required this.textStatus,
      required this.indefecator});

  final String icon;
  final String textStatus;
  final int indefecator;

  @override
  Widget build(BuildContext context) {
    final smiley = context.watch<AddResultsProvider>();
    return GestureDetector(
      onTap: () {
        smiley.smileyIntFunc(indefecator);
      },
      child: SizedBox(
        height: 50,
        child: Column(
          children: [
            const SizedBox(height: 4),
            (smiley.smileyInt == indefecator)
                ? SvgPicture.asset(
                    icon,
                    height: 24,
                    width: 24,
                  )
                : SvgPicture.asset(
                    icon,
                    height: 24,
                    width: 24,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.color),
                  ),
            Text(textStatus,
                style: TextStyle(
                    fontSize: 12,
                    color: (smiley.smileyInt == indefecator)
                        ? Colors.black
                        : Colors.grey))
          ],
        ),
      ),
    );
  }
}
