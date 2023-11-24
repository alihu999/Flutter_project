import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveler/controller/auth/sign_up_controller.dart';
import 'package:traveler/core/function/validinput.dart';
import 'package:traveler/screen/auth/widget/custom_text_field.dart';

class SignUpPassword extends GetView<SignUpControllerImp> {
  const SignUpPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.passwordInfoFormState,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<SignUpControllerImp>(builder: ((controller) {
            return CustomTextField(
              label: "Password".tr,
              iconData: Icons.lock,
              controller: controller.password,
              obscureText: controller.isShowPassword,
              onTap: () => controller.showPassword("password"),
              validator: (val) => validinput(val!, 10, 4, "password"),
              onFieldSubmitted: (val) {
                FocusScope.of(context)
                    .requestFocus(controller.rePasswordFocusNode);
              },
            );
          })),
          GetBuilder<SignUpControllerImp>(builder: (controller) {
            return CustomTextField(
              label: "Repassword".tr,
              iconData: Icons.lock,
              controller: controller.rePassword,
              obscureText: controller.isShowRePassword,
              onTap: () => controller.showPassword("rePassword"),
              focusNode: controller.rePasswordFocusNode,
              onFieldSubmitted: (val) {
                if (controller.passwordInfoFormState.currentState!.validate()) {
                  controller.next();
                }
              },
              validator: (val) => validinput(val!, 10, 4, "password"),
            );
          })
        ],
      ),
    );
  }
}
