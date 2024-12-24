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
            itemCount: resultCard.length,
            itemBuilder: ((BuildContext context, index) {
              index = resultCard.length - 1 - index;
              return ResultCardModel(
                smail: resultCard[index].iconStatus,
                timesOfday: resultCard[index].iconDay,
                pills: resultCard[index].iconMedicine,
                sis: resultCard[index].sis,
                dis: resultCard[index].dis,
                puls: resultCard[index].puls,
                medicine: resultCard[index].medicine,
              );
            }),
          )),
    );
  }
}
