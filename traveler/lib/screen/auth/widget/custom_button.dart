import 'package:flutter/material.dart';
import 'package:traveler/core/constant/color.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String lable;
  const CustomButton({super.key, required this.onPressed, required this.lable});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    return MaterialButton(
        color: AppColor.firstColor,
        highlightColor: Colors.white,
        height: 0.062 * screenHight,
        minWidth: 0.075 * screenHight,
        shape: StadiumBorder(
            side: BorderSide(color: AppColor.secondColor, width: 2)),
        onPressed: onPressed,
        child: Text(
          lable,
          style: const TextStyle(color: Colors.white, fontSize: 17),
        ));
  }
}
