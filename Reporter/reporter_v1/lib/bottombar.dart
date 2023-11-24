import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              height: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xfff2f4f6),
                  border: Border(
                      top: BorderSide(color: Color(0xff6b48ff), width: 4))),
              child: CarouselSlider.builder(
                  itemCount: 4,
                  options: CarouselOptions(
                      height: double.infinity,
                      autoPlay: true,
                      scrollDirection: Axis.vertical,
                      autoPlayInterval: const Duration(seconds: 8)),
                  itemBuilder: (context, index, realIndex) {
                    return Text("breaking news content $index");
                  }),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              height: double.infinity,
              color: const Color(0xff6b48ff),
              child: const Text(
                "عاجل",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          )
        ],
      ),
    );
  }
}
