import 'package:flutter/material.dart';

String url = "";
String newsTitle = "";
String newsContent = "";
String journalistName = "";

class FullNews extends StatefulWidget {
  FullNews(String imgural, String title, String news, String jornalist,
      {super.key}) {
    url = imgural;
    newsTitle = title;
    newsContent = news;
    journalistName = jornalist;
  }

  @override
  State<FullNews> createState() => _FullNewsState();
}

class _FullNewsState extends State<FullNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
            url,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            newsTitle,
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            journalistName,
            style: const TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            newsContent,
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            newsContent,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    ));
  }
}
