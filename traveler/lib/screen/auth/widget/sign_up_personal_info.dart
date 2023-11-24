import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveler/controller/auth/sign_up_controller.dart';
import 'package:traveler/core/function/validinput.dart';
import 'package:traveler/screen/auth/widget/custom_text_field.dart';

class SignUpPersonalInfo extends GetView<SignUpControllerImp> {
  const SignUpPersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.personalInfoFormState,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            label: "First Name".tr,
            iconData: Icons.person,
            controller: controller.firstName,
            keyboardtype: TextInputType.name,
            validator: (val) => validinput(val!, 10, 3, "username"),
            onFieldSubmitted: (val) {
              FocusScope.of(context).requestFocus(controller.lastNameFocusNode);
            },
          ),
          CustomTextField(
            controller: controller.lastName,
            label: "Last Name".tr,
            focusNode: controller.lastNameFocusNode,
            iconData: Icons.person,
            keyboardtype: TextInputType.name,
            onFieldSubmitted: (val) {
              if (controller.personalInfoFormState.currentState!.validate()) {
                controller.next();
              }
            },
            validator: (val) => validinput(val!, 10, 3, "username"),
          )
        ],
      ),
    );
  }
}
