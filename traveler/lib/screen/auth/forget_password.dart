import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveler/controller/auth/forget_password_controller.dart';
import 'package:traveler/core/constant/app_route.dart';
import 'package:traveler/core/function/validinput.dart';
import 'package:traveler/screen/auth/widget/custom_text_field.dart';

import 'widget/backgroundpage.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BackgroundPage(
              title: "Forget Password".tr,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "please Enter your phone".tr,
                    style: const TextStyle(fontSize: 17),
                  ),
                  Form(
                    key: controller.phoneFormState,
                    child: CustomTextField(
                      label: "phone".tr,
                      iconData: Icons.phone,
                      controller: controller.phone,
                      keyboardtype: TextInputType.phone,
                      onFieldSubmitted: (val) {
                        if (controller.phoneFormState.currentState!
                            .validate()) {
                          Get.toNamed(AppRoute.confirmPhoneForgetPassword);
                        }
                      },
                      validator: (val) => validinput(val!, 10, 10, "phone"),
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
