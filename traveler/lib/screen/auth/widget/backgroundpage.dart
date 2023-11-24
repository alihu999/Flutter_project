import 'package:flutter/material.dart';
import 'package:traveler/core/constant/color.dart';

import 'auth_custom_clip_path.dart';

class BackgroundPage extends StatelessWidget {
  final String title;
  const BackgroundPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: AuthCustomClipPathTow(),
                child: Container(
                  height: screenHight * 0.376,
                  color: AppColor.secondColor,
                ),
              ),
              ClipPath(
                clipper: AuthCustomClipPathOne(),
                child: Container(
                  height: screenHight * 0.188,
                  color: AppColor.firstColor,
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                height: screenHight * 0.344,
                margin: EdgeInsets.only(left: screenHight * 0.037),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 30, color: AppColor.thirdColor),
                ),
              ),
            ],
          ),
          ClipPath(
              clipper: AuthCustomClipPathThree(),
              child: Container(
                height: screenHight * 0.230,
                color: AppColor.firstColor,
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(
                    bottom: 20,
                    right: screenHight * 0.037,
                    left: screenHight * 0.037,
                    top: screenHight * 0.037),
              ))
        ],
      ),
    );
  }
}
