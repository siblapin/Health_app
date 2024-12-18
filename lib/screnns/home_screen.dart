import 'package:flutter/material.dart';
import 'package:health_app/providers%20%20/add_results_provider.dart';
import 'package:health_app/screnns/home_screen/logo_home_screen.dart';
import 'package:provider/provider.dart';
import 'home_screen/board_home_screen.dart';
import 'home_screen/button_add_home_screen.dart';
import 'home_screen/list_widgets_home_screen.dart';
import 'home_screen/tittle_list_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenListTab = context.watch<AddResultsProvider>();
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(
          children: [
            Visibility(
              visible: screenListTab.screenList,
              child: const Column(
                children: [
                  LogoHomeScreen(),
                  SizedBox(height: 16),
                  BoardHomeScreen(),
                  SizedBox(height: 16),
                  ButtonAddHomeScreen(),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const TittleListHomeScreen(),
            const SizedBox(height: 16),
            const ListWidgetsHomeScreen()
          ],
        ),
      ),
    );
  }
}
