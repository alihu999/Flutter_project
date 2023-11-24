import 'package:flutter/material.dart';

import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'menupage.dart';
import 'newspage/homepage.dart';

class Zoomdrawer extends StatefulWidget {
  const Zoomdrawer({super.key});

  @override
  State<Zoomdrawer> createState() => _ZoomdrawerState();
}

class _ZoomdrawerState extends State<Zoomdrawer> {
  @override
  Widget build(BuildContext context) {
    return const ZoomDrawer(
        style: DrawerStyle.defaultStyle,
        showShadow: true,
        menuBackgroundColor: Color(0xff6b48ff),
        menuScreen: Menupage(),
        androidCloseOnBackTap: true,
        mainScreen: HomePage());
  }
}
