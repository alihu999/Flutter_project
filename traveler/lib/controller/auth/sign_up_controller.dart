import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/app_route.dart';

abstract class SignUpController extends GetxController {
  signup();
  next();
  showPassword(String val);
}

class SignUpControllerImp extends SignUpController {
  int currentIndex = 0;
  late PageController pagecontroller;

  GlobalKey<FormState> personalInfoFormState = GlobalKey<FormState>();
  GlobalKey<FormState> contactInfoFormState = GlobalKey<FormState>();
  GlobalKey<FormState> passwordInfoFormState = GlobalKey<FormState>();

  late TextEditingController firstName;
  late TextEditingController lastName;

  late TextEditingController email;
  late TextEditingController phone;

  late TextEditingController password;
  late TextEditingController rePassword;

  bool isShowPassword = true;
  bool isShowRePassword = true;

  late FocusNode lastNameFocusNode;
  late FocusNode phoneFocusNode;
  late FocusNode rePasswordFocusNode;

  @override
  void onInit() {
    pagecontroller = PageController();
    firstName = TextEditingController();
    lastName = TextEditingController();

    email = TextEditingController();
    phone = TextEditingController();

    password = TextEditingController();
    rePassword = TextEditingController();

    lastNameFocusNode = FocusNode();
    phoneFocusNode = FocusNode();
    rePasswordFocusNode = FocusNode();
    super.onInit();
  }

  @override
  void dispose() {
    firstName.dispose();
    lastName.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }

  @override
  next() {
    currentIndex++;
    if (currentIndex > 2) {
      Get.offAllNamed(AppRoute.confirmPhone);
    } else {
      pagecontroller.animateToPage(currentIndex,
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
    }
  }

  @override
  signup() {}
  @override
  showPassword(String val) {
    if (val == "password") {
      isShowPassword = !isShowPassword;
    }
    if (val == "rePassword") {
      isShowRePassword = !isShowRePassword;
    }
    update();
  }
}
