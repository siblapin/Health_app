import 'package:flutter/material.dart';
import '../../models/result_card/result_card_model.dart';

class ListWidgetsHomeScreen extends StatelessWidget {
  const ListWidgetsHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
          width: double.infinity,
          child: ListView.builder(
              itemCount: 60,
              itemBuilder: ((BuildContext context, index) =>
                  const ResultCardModel()))),
    );
  }
}
