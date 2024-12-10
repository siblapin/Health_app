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
              const InputOfIndicators(),
              const HealthCondition(),
              const TimesOfDay(),
              const Hand(),
              const Medicine(),
              Container(
                width: double.infinity,
                height: 48,
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(color_100)),
                  onPressed: () {},
                  icon: Icon(Icons.add_circle, color: bg),
                  label: Text(
                    "Сохранить",
                    style: TextStyle(color: bg, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Блок ввод показателей СИС ДИД ПУЛЬС
class InputOfIndicators extends StatelessWidget {
  const InputOfIndicators({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, bottom: 16),
      width: 301,
      height: 120,
      decoration: BoxDecoration(
          color: bg, borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text("ДИС", style: TextStyle(fontSize: 14, color: text_color2)),
                Text("мм рт. ст.",
                    style: TextStyle(fontSize: 12, color: color_40)),
              ],
            ),
            const SizedBox(width: 32),
            Column(
              children: [
                Text("CИС", style: TextStyle(fontSize: 14, color: text_color2)),
                Text("мм рт. ст.",
                    style: TextStyle(fontSize: 12, color: color_40)),
              ],
            ),
            const SizedBox(width: 32),
            Column(
              children: [
                Text("Пульс",
                    style: TextStyle(fontSize: 14, color: text_color2)),
                Text("у/мин", style: TextStyle(fontSize: 12, color: color_40)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//Блок самочувствие
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
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 75,
            height: 50,
            child: Column(
              children: [
                const SizedBox(height: 4),
                SvgPicture.asset('assets/icons/bad.svg', height: 24, width: 24),
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
                const Text("Недомогание", style: TextStyle(fontSize: 12))
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
    ]);
  }
}

//Блок время суток
class TimesOfDay extends StatelessWidget {
  const TimesOfDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
          width: double.infinity,
          child: Text(
            "Время",
            textAlign: TextAlign.start,
          )),
      const SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 15, top: 4, bottom: 4),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: color_100)),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/morning.svg',
                    height: 24, width: 24),
                const SizedBox(width: 12),
                const Text("Утро", style: TextStyle(fontSize: 12))
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 15, top: 4, bottom: 4),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: color_100)),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/day.svg', height: 24, width: 24),
                const SizedBox(width: 12),
                const Text("День", style: TextStyle(fontSize: 12))
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 15, top: 4, bottom: 4),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: color_100)),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/night.svg',
                    height: 24, width: 24),
                const SizedBox(width: 12),
                const Text("Вечер", style: TextStyle(fontSize: 12))
              ],
            ),
          ),
        ],
      ),
      const SizedBox(height: 12),
    ]);
  }
}

//Блок время суток
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
          SizedBox(
            width: 48,
            height: 48,
            child: SvgPicture.asset('assets/icons/ion_hand-right.svg',
                height: 24, width: 24),
          ),
          const SizedBox(width: 16),
          SizedBox(
            width: 48,
            height: 48,
            child: SvgPicture.asset('assets/icons/ion_hand-right.svg',
                height: 24, width: 24),
          ),
        ],
      )
    ]);
  }
}

//Блок ввод показателей СИС ДИД ПУЛЬС
class Medicine extends StatelessWidget {
  const Medicine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 30),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          color: bg, borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Padding(
          padding: const EdgeInsets.only(right: 12, left: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Лекарство"),
              SizedBox(
                child: SvgPicture.asset('assets/icons/eva_plus-circle-fill.svg',
                    height: 24, width: 24),
              )
            ],
          )),
    );
  }
}
