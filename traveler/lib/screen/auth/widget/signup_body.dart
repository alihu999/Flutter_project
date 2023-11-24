import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveler/controller/auth/sign_up_controller.dart';
import 'package:traveler/screen/auth/widget/sign_up_contact_info.dart';
import 'package:traveler/screen/auth/widget/sign_up_password.dart';
import 'package:traveler/screen/auth/widget/sign_up_personal_info.dart';

class SignUpBody extends GetView<SignUpControllerImp> {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHight,
      child: PageView(
        controller: controller.pagecontroller,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          SignUpPersonalInfo(),
          SignUpContactInfo(),
          SignUpPassword()
        ],
      ),
    );
  }
}
