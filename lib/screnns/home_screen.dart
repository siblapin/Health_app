import 'package:flutter/material.dart';
import 'package:health_app/providers%20%20/add_results_provider.dart';
import 'package:health_app/screnns/home_screen/logo_home_screen.dart';
import 'package:provider/provider.dart';
import 'add_results_screen/add_bottom_sheet.dart';
import 'home_screen/board_home_screen.dart';
import 'home_screen/button_add_home_screen.dart';
import 'home_screen/list_widgets_home_screen.dart';
import 'home_screen/tittle_list_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenListTab = context.watch<AddResultsProvider>();
    Size screenSize = MediaQuery.of(context).size;

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: SizedBox(
          width: (screenSize.width < 700) ? 400 : double.infinity,
          child: (screenSize.width < 700)
              ? HomeScreenColumn(screenListTab: screenListTab)
              : HomeScreenRow(screenSize: screenSize),
        ),
      ),
    );
  }
}

//Адаптация под Смартфон
class HomeScreenColumn extends StatelessWidget {
  const HomeScreenColumn({
    super.key,
    required this.screenListTab,
  });

  final AddResultsProvider screenListTab;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const ListWidgetsHomeScreen()
      ],
    );
  }
}

//Адаптация под широкий экран Web\Планшет
class HomeScreenRow extends StatelessWidget {
  const HomeScreenRow({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 400,
          child: Column(children: [
            const LogoHomeScreen(),
            const SizedBox(height: 16),
            const BoardHomeScreen(),
            const SizedBox(height: 16),
            Visibility(
                visible: (screenSize.width < 1500) ? true : false,
                child: const ButtonAddHomeScreen())
          ]),
        ),
        const SizedBox(width: 70),
        Visibility(
          visible: (screenSize.width > 1000) ? true : false,
          child: const SizedBox(
            width: 400,
            child: Column(
              children: [TittleListHomeScreen(), ListWidgetsHomeScreen()],
            ),
          ),
        ),
        Visibility(
          visible: (screenSize.width > 1500) ? true : false,
          child: Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 70, right: 100),
              child: const AddBottomSheet(
                navigarotPop: false,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
