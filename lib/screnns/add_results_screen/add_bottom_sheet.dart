import 'package:flutter/material.dart';
import 'package:health_app/constants/constant.dart';
import 'package:health_app/screnns/add_results_screen/Input_of_Indicators.dart';
import 'package:health_app/screnns/add_results_screen/hand.dart';
import 'package:health_app/screnns/add_results_screen/health_condition.dart';
import 'package:health_app/screnns/add_results_screen/medicine.dart';
import 'package:health_app/screnns/add_results_screen/times_of_day.dart';

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
              HealthCondition(),
              const TimesOfDay(),
              const Hand(),
              const Medicine(),
              SizedBox(
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
