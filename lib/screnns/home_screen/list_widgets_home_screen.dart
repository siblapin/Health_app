import 'package:flutter/material.dart';

import '../../constants/constant.dart';

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
              itemBuilder: ((BuildContext context, index) => Container(
                  width: 335,
                  height: 113,
                  child:
                      Card(color: color_white, child: const Text("data")))))),
    );
  }
}
