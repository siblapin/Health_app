import 'package:flutter/material.dart';

import 'constants/constant.dart';
import 'screnns/home_screen.dart';

void main() {
  runApp(Health_app());
}

class Health_app extends StatelessWidget {
  const Health_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Дневник давления',
        theme: ThemeData(fontFamily: "Manrope"),
        debugShowCheckedModeBanner: false,
        home: Scaffold(backgroundColor: bg, body: const HomeScreen()));
  }
}
