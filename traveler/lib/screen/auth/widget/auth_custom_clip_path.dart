import 'package:flutter/material.dart';

class AuthCustomClipPathOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double high = size.height;
    double width = size.width;

    final path = Path();
    path.lineTo(0, high);
    path.quadraticBezierTo(width * 0.25, high, width * 0.5, high * 0.55);
    path.quadraticBezierTo(width * 0.75, high * 0.10, width, high * 0.5);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class AuthCustomClipPathTow extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double high = size.height;
    double width = size.width;

    final path = Path();
    path.lineTo(0, high * 0.4);
    path.quadraticBezierTo(
        width * 0.25, high * 0.75, width * 0.5, high * 0.80 * 0.75);
    path.quadraticBezierTo(width * 0.90, high * 0.35, width, high);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class AuthCustomClipPathThree extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double high = size.height;
    double width = size.width;

    final path = Path();
    path.lineTo(0, high);
    path.lineTo(width, high);
    path.lineTo(width, 0);
    path.quadraticBezierTo(width * 0.75, 0, width * 0.5, high * 0.40);
    path.quadraticBezierTo(width * 0.30, high * 0.75, 0, high * 0.40);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
