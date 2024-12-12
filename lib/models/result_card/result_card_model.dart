import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/constants/constant.dart';
import '../../constants/date_time_app.dart';
import 'sis_dis_puls.mosel.dart';

class ResultCardModel extends StatelessWidget {
  const ResultCardModel({
    super.key,
  });

  final String smail = 'assets/icons/happy.svg';
  final String timesOfday = 'assets/icons/day.svg';
  final String pills = 'assets/icons/pill.svg';
  final int sis = 90;
  final int dis = 90;
  final int puls = 90;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
          padding: const EdgeInsets.only(left: 16, top: 12, right: 16),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: color_white),
          child: Column(
            children: [
              SizedBox(
                height: 37,
                width: 303,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 2, left: 4, right: 4),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4)),
                          color: mint),
                      child: DateTimeApp(),
                    ),
                    const SizedBox(width: 16),
                    SvgPicture.asset(smail, height: 24, width: 24),
                    const SizedBox(width: 16),
                    SvgPicture.asset(timesOfday, height: 24, width: 24),
                    const SizedBox(width: 16),
                    SvgPicture.asset(pills, height: 24, width: 24),
                    const Expanded(child: SizedBox()),
                    const SizedBox(
                      width: 24,
                      height: 24,
                      child: Icon(Icons.keyboard_arrow_down),
                    )
                  ],
                ),
              ),
              const Divider(),
              SizedBox(
                height: 42,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SisDisPuls(
                      textTitle: "СИС",
                      inputText: sis.toString(),
                      widthBox: 90,
                      text: 'мм рт.ст',
                    ),
                    SisDisPuls(
                      textTitle: "ДИС",
                      inputText: dis.toString(),
                      widthBox: 90,
                      text: 'мм рт.ст',
                    ),
                    SisDisPuls(
                      textTitle: "ПУЛЬС",
                      inputText: puls.toString(),
                      widthBox: 88,
                      text: 'у/мин',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
            ],
          )),
    );
  }
}
