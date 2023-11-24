import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:songs/const%20/colors.dart';
import 'package:songs/controller/player_controller.dart';
import 'package:songs/widget/all_songs.dart';
import 'package:songs/widget/favorite_songs.dart';
import 'package:songs/widget/play_pause_button.dart';
import 'package:lottie/lottie.dart';

import '../widget/home_page_seek_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PalyerControllerImp());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("DO RE"),
          centerTitle: true,
          elevation: 20,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [AppColors.firstColor, AppColors.secondColor])),
          ),
          bottom: const TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              icon: Icon(
                Icons.list_outlined,
                size: 35,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 35,
              ),
            ),
          ]),
        ),
        body: Stack(
          children: [
            Align(
                alignment: Alignment.bottomLeft,
                child: Lottie.asset(
                  "assets/background.json",
                )),
            Container(
              color: Colors.white.withOpacity(0.5),
            ),
            const TabBarView(children: [AllSongs(), FavoriteSongs()]),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const HomePageSeekButton(),
        floatingActionButton: const PlayPauseButton(),
      ),
    );
  }
}
