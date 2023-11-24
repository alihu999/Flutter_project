import 'package:flutter/material.dart';

import 'selectcolor.dart';
import 'selectinterest.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("setting"),
        backgroundColor: const Color(0xff6b48ff),
      ),
      body: SingleChildScrollView(
        child: Column(children: const [SelectInterest(), SelectColor()]),
      ),
    );
  }
}
