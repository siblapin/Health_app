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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "СИС",
                          style: TextStyle(fontSize: 12, color: text_color2),
                        ),
                        const SizedBox(height: 4),
                        const Text("120 мм рт.ст",
                            style: TextStyle(fontSize: 14))
                      ],
                    ),
                    SizedBox(
                      width: 83,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ДИС",
                            style: TextStyle(fontSize: 12, color: text_color2),
                          ),
                          const SizedBox(height: 4),
                          const Text("80 мм рт.ст",
                              style: TextStyle(fontSize: 14))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 81,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ПУЛЬС",
                            style: TextStyle(fontSize: 12, color: text_color2),
                          ),
                          const SizedBox(height: 4),
                          const SizedBox(
                            width: double.infinity,
                            child: Text(
                              "80 у/мин",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                    )
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
