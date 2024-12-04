import 'package:flutter/material.dart';

import '../../constants/constant.dart';

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
        onPressed: () {},
        icon: Icon(Icons.add_circle, color: bg),
        label: Text(
          "Добавить",
          style: TextStyle(color: bg, fontSize: 18),
        ),
      ),
    );
  }
}
