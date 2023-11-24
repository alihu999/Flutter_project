import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController phone;
  late TextEditingController newPassword;
  late TextEditingController reNewPassword;

  GlobalKey<FormState> phoneFormState = GlobalKey<FormState>();
  GlobalKey<FormState> passwordFormState = GlobalKey<FormState>();

  bool isShowNewPassword = true;
  bool isShowReNewPassword = true;

  late FocusNode reNewPasswordFocusNode;

  @override
  void onInit() {
    phone = TextEditingController();
    newPassword = TextEditingController();
    reNewPassword = TextEditingController();
    reNewPasswordFocusNode = FocusNode();
    super.onInit();
  }

  @override
  void dispose() {
    phone.dispose();
    newPassword.dispose();
    reNewPassword.dispose();
    super.dispose();
  }

  showPassword(String val) {
    if (val == "password") {
      isShowNewPassword = !isShowNewPassword;
    }
    if (val == "rePassword") {
      isShowReNewPassword = !isShowReNewPassword;
    }
    update();
  }
}
