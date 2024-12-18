import 'package:flutter/material.dart';
import 'package:health_app/providers%20%20/add_results_provider.dart';
import 'package:health_app/data/data.dart';
import 'package:provider/provider.dart';
import '../../models/result_card/result_card_model.dart';

class ListWidgetsHomeScreen extends StatelessWidget {
  const ListWidgetsHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.watch<AddResultsProvider>();

    return Expanded(
      child: SizedBox(
          width: double.infinity,
          child: ListView.builder(
              itemCount: ResultCard.length,
              itemBuilder: ((BuildContext context, index) => ResultCardModel(
                    smail: ResultCard[index].iconStatus,
                    timesOfday: ResultCard[index].iconDay,
                    pills: '',
                    sis: ResultCard[index].sis,
                    dis: ResultCard[index].dis,
                    puls: ResultCard[index].puls,
                  )))),
    );
  }
}
