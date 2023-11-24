import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:traveler/screen/auth/widget/signin_body.dart';

import 'package:traveler/screen/auth/widget/signin_tail.dart';

import '../../controller/auth/sign_in_controller.dart';
import 'widget/backgroundpage.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignInControllerImp());
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          BackgroundPage(
            title: "Sign In".tr,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [SignInBodyPage(), TailSignInPage()],
            ),
          )
        ]),
      ),
    );
  }
}
