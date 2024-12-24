import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/constants/constant.dart';
import '../../constants/date_time_app.dart';
import 'sis_dis_puls.mosel.dart';

//Класс с переменными
class DataResultCardModel {
  String sis; // СИС показатель из TextField
  String dis; // ДИС показатель из TextField
  String puls; // Пульс показатель из TextField
  String iconStatus; // адрес Иконки самочувствия
  String iconDay; // адрес иконки день самочувствия
  String iconMedicine; // адрес иконки таблетки
  String medicine;

  DataResultCardModel({
    required this.sis,
    required this.dis,
    required this.puls,
    required this.iconStatus,
    required this.iconDay,
    required this.iconMedicine,
    required this.medicine,
  });
}

//Виджет модели КАРТОЧКИ
class ResultCardModel extends StatefulWidget {
  const ResultCardModel({
    super.key,
    required this.sis,
    required this.smail,
    required this.timesOfday,
    required this.pills,
    required this.dis,
    required this.puls,
    required this.medicine,
  });

  final String smail; // Иконка самочувствия
  final String timesOfday; // Иконка время суток
  final String pills;
  final String sis; // СИС показатель из TextField
  final String dis; // Дис показатель из TextField
  final String puls; // Пульс показатель из TextField
  final String medicine; // текст из TextField название лекарств

  @override
  State<ResultCardModel> createState() => _ResultCardModelState();
}

class _ResultCardModelState extends State<ResultCardModel> {
  bool onOff = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.only(left: 16, top: 15, right: 16, bottom: 5),
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
                  SvgPicture.asset(widget.smail, height: 24, width: 24),
                  const SizedBox(width: 16),
                  SvgPicture.asset(widget.timesOfday, height: 24, width: 24),
                  const SizedBox(width: 16),
                  SvgPicture.asset(widget.pills, height: 24, width: 24),
                  const Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (onOff == false) {
                          onOff = true;
                        } else if (onOff == true) {
                          onOff = false;
                        }
                      });
                    },
                    child: (onOff)
                        ? const SizedBox(
                            width: 34,
                            height: 34,
                            child: Icon(Icons.keyboard_arrow_up),
                          )
                        : const SizedBox(
                            width: 34,
                            height: 34,
                            child: Icon(Icons.keyboard_arrow_down),
                          ),
                  )
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SisDisPuls(
                    textTitle: "СИС",
                    inputText: widget.sis.toString(),
                    text: 'мм рт.ст',
                  ),
                  SisDisPuls(
                    textTitle: "ДИС",
                    inputText: widget.dis.toString(),
                    text: 'мм рт.ст',
                  ),
                  SisDisPuls(
                    textTitle: "ПУЛЬС",
                    inputText: widget.puls.toString(),
                    text: 'у/мин',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Visibility(
                visible: onOff,
                child: Column(
                  children: [
                    const Divider(),
                    SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Лекарства",
                          style: TextStyle(fontSize: 16, color: color_100),
                          textAlign: TextAlign.left,
                        )),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SvgPicture.asset(pill, height: 20, width: 20),
                        const SizedBox(width: 10),
                        SizedBox(
                            height: 20,
                            child: (widget.medicine.isNotEmpty)
                                ? Text(widget.medicine)
                                : Text(
                                    'не указано',
                                    style: TextStyle(
                                        fontSize: 12, color: color_40),
                                  )),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 5),
                        child: SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {},
                                    child: SvgPicture.asset(basket,
                                        height: 24, width: 24)),
                                SvgPicture.asset(editing,
                                    height: 24, width: 24),
                              ],
                            )))
                  ],
                ))
          ],
        ));
  }
}
