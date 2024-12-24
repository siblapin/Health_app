import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/providers%20%20/board_home_provider.dart';
import 'package:provider/provider.dart';
import '../../constants/constant.dart';
import '../../constants/date_time_app.dart';
import '../../models/result_card/sis_dis_puls.mosel.dart';

class BoardHomeScreen extends StatelessWidget {
  const BoardHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var smileyTextBoard = context.watch<BoardHomeProvider>();

    return SizedBox(
      child: Card(
        color: mint,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 16.0, bottom: 16),
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
                height: 35,
                child: Row(
                  children: [
                    SizedBox(
                      width: 81,
                      child: DateTimeApp(),
                    ),
                    const Expanded(child: SizedBox()),
                    SvgPicture.asset(smileyTextBoard.smileyTextBoard,
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
              const SizedBox(height: 5),
              const SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SisDisPuls(
                      textTitle: "СИС",
                      inputText: '120',
                      text: 'мм рт.ст',
                    ),
                    SisDisPuls(
                      textTitle: "ДИС",
                      inputText: '80',
                      text: 'мм рт.ст',
                    ),
                    SisDisPuls(
                      textTitle: "ПУЛЬС",
                      inputText: '80',
                      text: 'уд/мин',
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
