import 'package:flutter/material.dart';
import 'package:reporter_v1/getnews.dart';

class Policy extends StatefulWidget {
  const Policy({super.key});

  @override
  State<Policy> createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Color(0xfff2f4f6), body: GetNews());
  }
}
