import 'package:flutter/material.dart';
import 'package:reporter_v1/getnews.dart';

class Sport extends StatefulWidget {
  const Sport({super.key});

  @override
  State<Sport> createState() => _SportState();
}

class _SportState extends State<Sport> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Color(0xfff2f4f6), body: GetNews());
  }
}
