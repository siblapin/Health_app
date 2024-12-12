import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'constant.dart';

class DateTimeApp extends StatelessWidget {
  DateTimeApp({
    super.key,
  });

  final time = DateFormat.EEEE().format(DateTime.now());
  final timePull = DateFormat('dd.MM.yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(time, style: TextStyle(fontSize: 10, color: color_100)),
        Text(timePull, style: const TextStyle(fontSize: 14))
      ],
    );
  }
}
