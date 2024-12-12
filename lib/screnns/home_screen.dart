import 'package:flutter/material.dart';
import 'package:health_app/screnns/home_screen/logo_home_screen.dart';
import 'home_screen/board_home_screen.dart';
import 'home_screen/button_add_home_screen.dart';
import 'home_screen/list_widgets_home_screen.dart';
import 'home_screen/tittle_list_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: const Column(
          children: [
            LogoHomeScreen(),
            SizedBox(height: 16),
            BoardHomeScreen(),
            SizedBox(height: 16),
            ButtonAddHomeScreen(),
            SizedBox(height: 16),
            TittleListHomeScreen(),
            SizedBox(height: 16),
            ListWidgetsHomeScreen()
          ],
        ),
      ),
    );
  }
}
