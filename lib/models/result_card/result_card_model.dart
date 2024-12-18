import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/constants/constant.dart';
import '../../constants/date_time_app.dart';
import 'sis_dis_puls.mosel.dart';

class DataResultCardModel {
  String sis;
  String dis;
  String puls;
  String iconStatus;
  String iconDay;
  String medicine;
  DataResultCardModel(
      {required this.sis,
      required this.dis,
      required this.puls,
      required this.iconStatus,
      required this.iconDay,
      required this.medicine});
}

class ResultCardModel extends StatelessWidget {
  const ResultCardModel({
    super.key,
    required this.sis,
    required this.smail,
    required this.timesOfday,
    required this.pills,
    required this.dis,
    required this.puls,
  });

  final String smail;
  final String timesOfday;
  final String pills;
  final String sis;
  final String dis;
  final String puls;
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
