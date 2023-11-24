import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:traveler/controller/auth/forget_password_controller.dart';
import 'package:traveler/core/constant/app_route.dart';

import 'widget/backgroundpage.dart';

class ConfirmPhoneForgetPassword extends GetView<ForgetPasswordControllerImp> {
  const ConfirmPhoneForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BackgroundPage(title: "Confirm phone".tr),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "confirm form".tr,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 17),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: screenHight * 0.037,
                        left: screenHight * 0.037,
                        top: screenHight * 0.040),
                    child: OTPTextField(
                      length: 5,
                      width: MediaQuery.of(context).size.width,
                      fieldWidth: 50,
                      style: const TextStyle(fontSize: 17, color: Colors.black),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                      onCompleted: (pin) {
                        Get.offAllNamed(AppRoute.resetPassword);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
