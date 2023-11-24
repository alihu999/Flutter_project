import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveler/controller/auth/sign_in_controller.dart';
import 'package:traveler/core/function/validinput.dart';
import 'package:traveler/screen/auth/widget/button_text.dart';

import 'custom_text_field.dart';

class SignInBodyPage extends GetView<SignInControllerImp> {
  const SignInBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(bottom: screenHight * 0.062),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Form(
            key: controller.phoneFormState,
            child: CustomTextField(
              label: "phone".tr,
              iconData: Icons.phone,
              controller: controller.phone,
              keyboardtype: TextInputType.phone,
              onFieldSubmitted: (val) =>
                  controller.phoneFormState.currentState!.validate(),
              validator: (val) => validinput(val!, 10, 10, "phone"),
            ),
          ),
          GetBuilder<SignInControllerImp>(builder: (controller) {
            return Form(
              key: controller.passwordFormState,
              child: CustomTextField(
                label: "Password".tr,
                iconData: Icons.lock,
                controller: controller.password,
                obscureText: controller.isShowPassword,
                onTap: () {
                  controller.showPassword();
                },
                onFieldSubmitted: (val) =>
                    controller.passwordFormState.currentState!.validate(),
                validator: (val) => validinput(val!, 10, 4, "password "),
              ),
            );
          }),
          ButtonText(
            rowText: "",
            buttonText: "Forget Password?".tr,
            onPressed: () {
              controller.goToForgetPassword();
            },
          ),
        ],
      ),
    );
  }
}
