import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/constants/constant.dart';

class Medicine extends StatelessWidget {
  const Medicine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 30),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          color: bg, borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Padding(
          padding: const EdgeInsets.only(right: 12, left: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Лекарство"),
              SizedBox(
                child: SvgPicture.asset('assets/icons/eva_plus-circle-fill.svg',
                    height: 24, width: 24),
              )
            ],
          )),
    );
  }
}
