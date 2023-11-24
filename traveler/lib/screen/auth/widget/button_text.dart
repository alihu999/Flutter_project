import 'package:flutter/material.dart';
import 'package:traveler/core/constant/color.dart';

class ButtonText extends StatelessWidget {
  final String buttonText;
  final String rowText;
  final void Function()? onPressed;
  const ButtonText(
      {super.key,
      required this.buttonText,
      required this.rowText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
          left: screenHight * 0.037, right: screenHight * 0.037),
      child: Row(
        children: [
          Text(
            rowText,
            style: const TextStyle(fontSize: 17, color: Colors.white),
          ),
          TextButton(
              onPressed: onPressed,
              child: Text(
                buttonText,
                style: TextStyle(fontSize: 17, color: AppColor.secondColor),
              ))
        ],
      ),
    );
  }
}
