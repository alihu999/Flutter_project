import 'package:flutter/material.dart';

class OnBoardingCustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double high = size.height;
    double width = size.width;
    final path = Path();
    path.lineTo(0, high);
    path.lineTo(width, high);
    path.lineTo(width, 0);
    path.quadraticBezierTo(width * 0.5, high * 0.30, 0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
