import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String lable;
  final Color color;
  final void Function() onPressed;
  const CustomButton(
      {super.key,
      required this.lable,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: MaterialButton(
          color: color,
          highlightColor: Colors.white,
          height: 50,
          minWidth: 100,
          onPressed: onPressed,
          child: Text(
            lable,
            style: const TextStyle(color: Colors.white, fontSize: 17),
          )),
    );
  }
}
