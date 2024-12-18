import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/constant.dart';
import '../../constants/date_time_app.dart';
import '../../models/result_card/sis_dis_puls.mosel.dart';

class BoardHomeScreen extends StatelessWidget {
  const BoardHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: mint,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
                width: double.infinity,
                child: Text("Последнее измерение",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16, color: color_100)),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 35,
                child: Row(
                  children: [
                    SizedBox(
                      width: 81,
                      child: DateTimeApp(),
                    ),
                    const Expanded(child: SizedBox()),
                    SvgPicture.asset('assets/icons/happy.svg',
                        height: 24, width: 24),
                    const SizedBox(width: 16),
                    SvgPicture.asset('assets/icons/day.svg',
                        height: 24, width: 24),
                    const SizedBox(width: 16),
                    SvgPicture.asset('assets/icons/pill.svg',
                        height: 24, width: 24),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const SizedBox(
                height: 45,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SisDisPuls(
                      textTitle: "СИС",
                      inputText: '120',
                      widthBox: 90,
                      text: 'мм рт.ст',
                    ),
                    SisDisPuls(
                      textTitle: "ДИС",
                      inputText: '80',
                      widthBox: 90,
                      text: 'мм рт.ст',
                    ),
                    SisDisPuls(
                      textTitle: "ПУЛЬС",
                      inputText: '80',
                      widthBox: 80,
                      text: 'у/мин',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
