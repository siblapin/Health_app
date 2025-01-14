import 'package:flutter/material.dart';
import '../../constants/constant.dart';

class LogoHomeScreen extends StatelessWidget {
  const LogoHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 31,
      child: Row(
        children: [
          const SizedBox(width: 24),
          Expanded(
            child: SizedBox(
              child: Center(
                child: Text(
                  "Дневник давления",
                  style: TextStyle(
                    color: color_100,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: false,
            child: SizedBox(
              width: 24,
              child: Icon(Icons.settings, color: color_100),
            ),
          )
        ],
      ),
    );
  }
}
