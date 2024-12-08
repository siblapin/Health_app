import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/constant.dart';
import 'board_home_screen.dart';

class ListWidgetsHomeScreen extends StatelessWidget {
  const ListWidgetsHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
          width: double.infinity,
          child: ListView.builder(
              itemCount: 60,
              itemBuilder: ((BuildContext context, index) =>
                  const WidgetsHomeScreen()))),
    );
  }
}

class WidgetsHomeScreen extends StatelessWidget {
  const WidgetsHomeScreen({
    super.key,
  });

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
                      padding: const EdgeInsets.only(
                        top: 2,
                        left: 4,
                        right: 4,
                      ),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4)),
                          color: mint),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Среда",
                              style: TextStyle(fontSize: 10, color: color_100)),
                          const Text("01.11.2024",
                              style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
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
              const Divider(),
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
              ),
              const SizedBox(height: 12),
            ],
          )),
    );
  }
}
