import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class TittleListHomeScreen extends StatelessWidget {
  const TittleListHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Ежедневные  данные",
            style: TextStyle(fontSize: 18, color: text_color)),
        Text("Все", style: TextStyle(fontSize: 14, color: color_100)),
      ],
    );
  }
}
