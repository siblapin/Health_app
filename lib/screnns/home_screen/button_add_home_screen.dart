import 'package:flutter/material.dart';
import 'package:health_app/constants/constant.dart';
import 'package:health_app/screnns/add_results_screen/add_bottom_sheet.dart';

class ButtonAddHomeScreen extends StatelessWidget {
  const ButtonAddHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
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
