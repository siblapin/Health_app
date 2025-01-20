import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:health_app/hive/adapters.dart';
import 'package:health_app/providers%20%20/add_results_provider.dart';
import 'package:health_app/providers%20%20/text_data_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'constants/constant.dart';
import 'data/data.dart';
import 'firebase_options.dart';
import 'providers  /board_home_provider.dart';
import 'screnns/home_screen.dart';
import 'package:flutter/services.dart';

import 'screnns/settings_screen/providers/settings_provider.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CardHealthAdapter());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        ChangeNotifierProvider(create: (context) => BoardHomeProvider()),
        ChangeNotifierProvider(create: (context) => DatabaseProvider()),
        ChangeNotifierProvider(create: (context) => SettingsProvider())
      ],
      child: MaterialApp(
          title: 'Дневник давления',
          theme: ThemeData(fontFamily: "Manrope"),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: bg,
            body: const HomeScreen(),
          )),
    );
  }
}
