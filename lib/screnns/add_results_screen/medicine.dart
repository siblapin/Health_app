import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/providers%20%20/add_results_provider.dart';
import 'package:health_app/constants/constant.dart';
import 'package:health_app/providers%20%20/text_data_provider.dart';
import 'package:provider/provider.dart';

class Medicine extends StatelessWidget {
  const Medicine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tabBotton = context.watch<AddResultsProvider>();
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 20),
      margin: const EdgeInsets.only(top: 16, bottom: 30),
      width: double.infinity,
      decoration: BoxDecoration(
          color: bg, borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Padding(
          padding: const EdgeInsets.only(right: 12, left: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Лекарство",
                      style: TextStyle(fontSize: 18, color: text_color)),
                  GestureDetector(
                    onTap: () {
                      tabBotton.tabBottonFunc();
                    },
                    child: SizedBox(
                      child: SvgPicture.asset(
                          'assets/icons/eva_plus-circle-fill.svg',
                          height: 24,
                          width: 24),
                    ),
                  )
                ],
              ),
              Visibility(
                  visible: tabBotton.tabBotton,
                  child: const Column(
                    children: [
                      SizedBox(height: 12),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Название",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      TextMedicine(),
                    ],
                  )),
            ],
          )),
    );
  }
}

class TextMedicine extends StatelessWidget {
  const TextMedicine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextDataProvider textData = context.read<TextDataProvider>();
    return TextField(
      inputFormatters: [LengthLimitingTextInputFormatter(20)],
      scrollPadding: const EdgeInsets.all(20),
      cursorColor: color_100,
      controller: textData.textDataMedicine,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color_40, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color_100, width: 1.5),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
