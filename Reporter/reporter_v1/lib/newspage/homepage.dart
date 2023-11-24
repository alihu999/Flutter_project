import 'package:flutter/material.dart';

import 'package:reporter_v1/menuwidget.dart';
import 'package:reporter_v1/newspage/economic.dart';
import 'package:reporter_v1/newspage/policy.dart';
import 'package:reporter_v1/newspage/scientific.dart';
import 'package:reporter_v1/newspage/sport.dart';
import 'package:reporter_v1/newspage/wether.dart';

import '../bottombar.dart';

import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double sceenwidth = MediaQuery.of(context).size.width;
    double sceenhight = MediaQuery.of(context).size.height;
    double screensize = sceenhight * sceenwidth;

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: const Color(0xfff2f4f6),
        appBar: AppBar(
          backgroundColor: const Color(0xff6b48ff),
          title: const Text("Reborter"),
          centerTitle: true,
          leading: const Menuwidget(),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                )),
          ],
          bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              isScrollable: true,
              labelStyle: TextStyle(fontSize: screensize * 0.000045),
              tabs: [
                Tab(
                  text: 'الرئيسية',
                  icon: Icon(Icons.home, size: screensize * 0.00010),
                ),
                Tab(
                  text: 'سياسة',
                  icon: Icon(Icons.policy, size: screensize * 0.00010),
                ),
                Tab(
                  text: 'اقتصاد',
                  icon: Icon(Icons.account_balance, size: screensize * 0.00010),
                ),
                Tab(
                  text: 'رياضة',
                  icon: Icon(Icons.sports, size: screensize * 0.00010),
                ),
                Tab(
                  text: 'طقس',
                  icon: Icon(Icons.sunny, size: screensize * 0.00010),
                ),
                Tab(
                  text: 'علوم',
                  icon: Icon(Icons.science, size: screensize * 0.00010),
                ),
              ]),
        ),
        body: const TabBarView(children: [
          Home(),
          Policy(),
          Economic(),
          Sport(),
          Weather(),
          Scientific()
        ]),
        bottomNavigationBar: const BottomBar(),
      ),
    );
  }
}
