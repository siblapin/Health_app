import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/constants/constant.dart';

class ButtonAddHomeScreen extends StatelessWidget {
  const ButtonAddHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 48,
      child: ElevatedButton.icon(
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(color_100)),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) => const AddBottomSheet(),
          );
        },
        icon: Icon(Icons.add_circle, color: bg),
        label: Text(
          "Добавить",
          style: TextStyle(color: bg, fontSize: 18),
        ),
      ),
    );
  }
}

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 41),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 26, right: 26),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: Text("Новое измерение",
                    style: TextStyle(color: color_100, fontSize: 20)),
              ),
              Container(
                margin: const EdgeInsets.only(top: 24, bottom: 16),
                width: 301,
                height: 120,
                decoration: BoxDecoration(
                    color: bg,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("ДИС",
                              style:
                                  TextStyle(fontSize: 14, color: text_color2)),
                          Text("мм рт. ст.",
                              style: TextStyle(fontSize: 12, color: color_40)),
                        ],
                      ),
                      const SizedBox(width: 32),
                      Column(
                        children: [
                          Text("CИС",
                              style:
                                  TextStyle(fontSize: 14, color: text_color2)),
                          Text("мм рт. ст.",
                              style: TextStyle(fontSize: 12, color: color_40)),
                        ],
                      ),
                      const SizedBox(width: 32),
                      Column(
                        children: [
                          Text("Пульс",
                              style:
                                  TextStyle(fontSize: 14, color: text_color2)),
                          Text("у/мин",
                              style: TextStyle(fontSize: 12, color: color_40)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(children: [
                const SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Самочувствие",
                      textAlign: TextAlign.start,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 75,
                      height: 50,
                      child: Column(
                        children: [
                          const SizedBox(height: 4),
                          SvgPicture.asset('assets/icons/bad.svg',
                              height: 24, width: 24),
                          const Text("Плохо", style: TextStyle(fontSize: 12))
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 90,
                        height: 50,
                        child: Column(children: [
                          const SizedBox(height: 4),
                          SvgPicture.asset('assets/icons/depression.svg',
                              height: 24, width: 24),
                          const Text("Недомогание",
                              style: TextStyle(fontSize: 12))
                        ])),
                    SizedBox(
                      width: 75,
                      height: 50,
                      child: Column(
                        children: [
                          const SizedBox(height: 4),
                          SvgPicture.asset('assets/icons/good.svg',
                              height: 24, width: 24),
                          const Text("Хорошо", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 75,
                      height: 50,
                      child: Column(
                        children: [
                          const SizedBox(height: 4),
                          SvgPicture.asset('assets/icons/happy.svg',
                              height: 24, width: 24),
                          const Text("Отлично", style: TextStyle(fontSize: 12))
                        ],
                      ),
                    )
                  ],
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
