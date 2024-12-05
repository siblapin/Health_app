import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/constant.dart';

class BoardHomeScreen extends StatelessWidget {
  const BoardHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 155,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Среда",
                              style: TextStyle(fontSize: 10, color: color_100)),
                          const Text("01.11.2024",
                              style: TextStyle(fontSize: 14))
                        ],
                      ),
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
              SizedBox(
                height: 42,
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
                      widthBox: 88,
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

//MODEL: показатели СИС ДИД и Пульс
class SisDisPuls extends StatelessWidget {
  SisDisPuls(
      {super.key,
      required this.textTitle,
      required this.text,
      required this.inputText,
      required this.widthBox});
  String textTitle;
  String text;
  String inputText;
  double widthBox;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthBox,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textTitle,
            style: TextStyle(fontSize: 12, color: text_color2),
          ),
          const SizedBox(height: 4),
          Text(
            "$inputText $text",
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
