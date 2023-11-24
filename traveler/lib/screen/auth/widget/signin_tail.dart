import 'package:flutter/material.dart';
import 'package:traveler/controller/auth/sign_in_controller.dart';
import 'package:get/get.dart';
import 'package:traveler/screen/auth/widget/button_text.dart';
import 'package:traveler/screen/auth/widget/custom_button.dart';

class TailSignInPage extends GetView<SignInControllerImp> {
  const TailSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHight * 0.219,
      padding: EdgeInsets.only(
          bottom: screenHight * 0.016,
          right: screenHight * 0.037,
          top: screenHight * 0.037),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(top: 15),
            child: CustomButton(
              lable: "Sign In".tr,
              onPressed: () {
                controller.signIn();
              },
            ),
          ),
          ButtonText(
            rowText: "don't have an account?".tr,
            buttonText: "Sign Up".tr,
            onPressed: () {
              controller.goToSignUp();
            },
          )
        ],
      ),
    );
  }
}
