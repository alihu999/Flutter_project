import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_page_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/data_source/static/static.dart';
import '../../widget/text_with_outline.dart';

class ImageList extends GetView<HomePageControllerImp> {
  const ImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Wrap(
          spacing: 20,
          children: List.generate(
              placeList.length,
              (index) => InkWell(
                    onTap: () {
                      controller.placeIndex = index;
                      controller.goToDetailsPage();
                    },
                    child: Container(
                        margin: const EdgeInsets.only(top: 25),
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.all(25),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                            color: AppColor.thirdColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            image: DecorationImage(
                                image: AssetImage(placeList[index].imageUrl),
                                fit: BoxFit.cover),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: (Offset(4, 4)),
                                  blurRadius: 8,
                                  spreadRadius: 4)
                            ]),
                        child: TextWithOutLine(
                          text: placeList[index].title,
                          size: 18,
                        )),
                  )),
        ),
        const SizedBox(
          height: 100,
        )
      ]),
    );
  }
}
