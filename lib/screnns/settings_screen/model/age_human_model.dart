import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../constants/constant.dart';

class Age extends StatelessWidget {
  const Age({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AgeText(),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Ваш возраст",
                style: TextStyle(color: color_100, fontSize: 16)),
          ),
        ),
      ],
    );
  }
}

class AgeText extends StatelessWidget {
  const AgeText({super.key});

  @override
  Widget build(BuildContext context) {
    var ageText = TextEditingController();
    return SizedBox(
      width: 100,
      child: TextField(
        inputFormatters: [LengthLimitingTextInputFormatter(2)],
        keyboardType: TextInputType.number,
        cursorColor: color_100,
        onChanged: (text) {
          if (text.length == 3) {}
        },
        controller: ageText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: color_40, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: color_100, width: 1.5),
          ),
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}
