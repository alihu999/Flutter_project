import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveler/controller/auth/forget_password_controller.dart';
import 'package:traveler/core/constant/app_route.dart';
import 'package:traveler/screen/auth/widget/backgroundpage.dart';
import 'package:traveler/screen/auth/widget/custom_text_field.dart';

import '../../core/function/validinput.dart';

class ResetPassword extends GetView<ForgetPasswordControllerImp> {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          BackgroundPage(
            title: "Reset Password".tr,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Form(
              key: controller.passwordFormState,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GetBuilder<ForgetPasswordControllerImp>(
                      builder: ((controller) {
                    return CustomTextField(
                      label: "Password".tr,
                      iconData: Icons.lock,
                      controller: controller.newPassword,
                      obscureText: controller.isShowNewPassword,
                      onTap: () => controller.showPassword("password"),
                      validator: (val) => validinput(val!, 10, 4, "password"),
                      onFieldSubmitted: (val) {
                        FocusScope.of(context)
                            .requestFocus(controller.reNewPasswordFocusNode);
                      },
                    );
                  })),
                  GetBuilder<ForgetPasswordControllerImp>(
                      builder: (controller) {
                    return CustomTextField(
                      label: "Repassword".tr,
                      iconData: Icons.lock,
                      controller: controller.reNewPassword,
                      obscureText: controller.isShowReNewPassword,
                      onTap: () => controller.showPassword("rePassword"),
                      focusNode: controller.reNewPasswordFocusNode,
                      onFieldSubmitted: (val) {
                        if (controller.passwordFormState.currentState!
                            .validate()) {
                          Get.offAllNamed(AppRoute.homePage);
                        }
                      },
                      validator: (val) => validinput(val!, 10, 4, "password"),
                    );
                  })
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
