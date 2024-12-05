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
        onPressed: () {
          showModalBottomSheet<void>(
            barrierLabel: "Новое измерение",
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
    return const SizedBox(
      width: double.infinity,
      child: Column(
        children: [Text("Новое измерение")],
      ),
    );
  }
}
