import 'package:flutter/material.dart';
import 'package:reporter_v1/getnews.dart';

class Scientific extends StatefulWidget {
  const Scientific({super.key});

  @override
  State<Scientific> createState() => _ScientificState();
}

class _ScientificState extends State<Scientific> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Color(0xfff2f4f6), body: GetNews());
  }
}
