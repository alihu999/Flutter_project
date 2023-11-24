import 'package:flutter/material.dart';
import 'package:reporter_v1/getnews.dart';

class Economic extends StatefulWidget {
  const Economic({super.key});

  @override
  State<Economic> createState() => _EconomicState();
}

class _EconomicState extends State<Economic> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff2f4f6),
      body: GetNews(),
    );
  }
}
