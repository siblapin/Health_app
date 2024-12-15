import 'package:flutter/material.dart';
import 'package:health_app/Providers%20%20/add_results_provider.dart';
import 'package:provider/provider.dart';
import '../../constants/constant.dart';

class TittleListHomeScreen extends StatelessWidget {
  const TittleListHomeScreen({
    super.key,
  });
  final String text1 = "Все";
  final String text2 = "Назад";
  @override
  Widget build(BuildContext context) {
    final screenList = context.read<AddResultsProvider>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Ежедневные  данные",
            style: TextStyle(fontSize: 18, color: text_color)),
        GestureDetector(
          onTap: () {
            screenList.screenListFunc();
          },
          child: SizedBox(
              height: 20,
              child: Text((screenList.screenList == true) ? text1 : text2,
                  style: TextStyle(fontSize: 14, color: color_100))),
        ),
      ],
    );
  }
}
