import 'package:flutter/material.dart';
import 'package:health_app/providers%20%20/add_results_provider.dart';
import 'package:health_app/providers%20%20/text_data_provider.dart';
import 'package:provider/provider.dart';
import 'constants/constant.dart';
import 'providers  /board_home_provider.dart';
import 'screnns/home_screen.dart';

void main() {
  runApp(const HealthApp());
}

class HealthApp extends StatelessWidget {
  const HealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AddResultsProvider()),
        ChangeNotifierProvider(create: (context) => TextDataProvider()),
        ChangeNotifierProvider(create: (context) => BoardHomeProvider())
      ],
      child: MaterialApp(
          title: 'Дневник давления',
          theme: ThemeData(fontFamily: "Manrope"),
          debugShowCheckedModeBanner: false,
          home: Scaffold(backgroundColor: bg, body: const HomeScreen())),
    );
  }
}
