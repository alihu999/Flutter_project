import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveler/screen/auth/widget/backgroundpage.dart';
import 'package:traveler/screen/auth/widget/signup_body.dart';

import '../../controller/auth/sign_up_controller.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());

    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          BackgroundPage(title: "Sign Up".tr),
          const SignUpBody(),
        ],
      ),
    ));
  }
}
