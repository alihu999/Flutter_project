import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:reporter_v1/login.dart';
import 'package:reporter_v1/setting/setting.dart';

import 'googleservices.dart';

class Menupage extends StatelessWidget {
  const Menupage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6b48ff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const Icon(
              Icons.newspaper,
              color: Colors.white,
            ),
            title: const Text(
              "SANA",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).push(PageTransition(
                  child: GoogleService("https://www.sana.sy/", "SANA"),
                  type: PageTransitionType.leftToRight,
                  duration: const Duration(milliseconds: 700)));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.newspaper,
              color: Colors.white,
            ),
            title: const Text(
              "Associated",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).push(PageTransition(
                  child:
                      GoogleService("https://apnews.com/", "Associated Press"),
                  type: PageTransitionType.leftToRight,
                  duration: const Duration(milliseconds: 700)));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.newspaper,
              color: Colors.white,
            ),
            title: const Text(
              "Reuters",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).push(PageTransition(
                  child: GoogleService("https://www.reuters.com/", "Reuters"),
                  type: PageTransitionType.leftToRight,
                  duration: const Duration(milliseconds: 700)));
            },
          ),
          const SizedBox(
            height: 30,
          ),
          ListTile(
            leading: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            title: const Text(
              "Google search",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).push(PageTransition(
                  child:
                      GoogleService("https://www.google.com/", "Google Search"),
                  type: PageTransitionType.leftToRight,
                  duration: const Duration(milliseconds: 700)));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.g_translate,
              color: Colors.white,
            ),
            title: const Text(
              "Google Translate",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).push(PageTransition(
                  child: GoogleService(
                      "https://translate.google.com/", "Google Translate"),
                  type: PageTransitionType.leftToRight,
                  duration: const Duration(milliseconds: 700)));
            },
          ),
          const SizedBox(
            height: 30,
          ),
          ListTile(
            leading: const Icon(
              Icons.publish_outlined,
              color: Colors.white,
            ),
            title: const Text(
              "publishing",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).push(PageTransition(
                  child: const LogIn(),
                  type: PageTransitionType.leftToRight,
                  duration: const Duration(milliseconds: 700)));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: const Text(
              "settings",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).push(PageTransition(
                  child: const Setting(),
                  type: PageTransitionType.leftToRight,
                  duration: const Duration(milliseconds: 700)));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            title: const Text(
              "Close",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              ZoomDrawer.of(context)!.close();
            },
          ),
          const SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
