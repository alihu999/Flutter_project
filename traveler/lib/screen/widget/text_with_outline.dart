import 'package:flutter/material.dart';

class TextWithOutLine extends StatelessWidget {
  final String text;
  final double size;
  const TextWithOutLine({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: size,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              //  color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: size,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1
                ..color = Colors.black),
        ),
      ],
    );
  }
}
