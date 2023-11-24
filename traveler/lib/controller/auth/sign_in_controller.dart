import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveler/core/constant/app_route.dart';

abstract class SignInController extends GetxController {
  signIn();
  goToForgetPassword();
  goToSignUp();
  showPassword();
}

class SignInControllerImp extends SignInController {
  late TextEditingController phone;
  late TextEditingController password;

  GlobalKey<FormState> phoneFormState = GlobalKey<FormState>();
  GlobalKey<FormState> passwordFormState = GlobalKey<FormState>();

  bool isShowPassword = true;

  @override
  void onInit() {
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  signIn() {
    if (phoneFormState.currentState!.validate() &&
        passwordFormState.currentState!.validate()) {
      Get.offAllNamed(AppRoute.homePage);
    }
  }

  @override
  showPassword() {
    isShowPassword = !isShowPassword;
    update();
  }
}
