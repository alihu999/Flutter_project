import 'package:flutter/material.dart';
import 'package:traveler/controller/auth/sign_up_controller.dart';
import 'package:traveler/core/function/validinput.dart';
import 'package:traveler/screen/auth/widget/custom_text_field.dart';
import 'package:get/get.dart';

class SignUpContactInfo extends GetView<SignUpControllerImp> {
  const SignUpContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.contactInfoFormState,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            label: "Email".tr,
            iconData: Icons.email,
            controller: controller.email,
            keyboardtype: TextInputType.emailAddress,
            validator: (val) => validinput(val!, 100, 5, "email"),
            onFieldSubmitted: (val) {
              FocusScope.of(context).requestFocus(controller.phoneFocusNode);
            },
          ),
          CustomTextField(
            label: "phone".tr,
            iconData: Icons.phone,
            controller: controller.phone,
            keyboardtype: TextInputType.phone,
            focusNode: controller.phoneFocusNode,
            onFieldSubmitted: (val) {
              if (controller.contactInfoFormState.currentState!.validate()) {
                controller.next();
              }
            },
            validator: (val) {
              return validinput(val!, 10, 10, "phone");
            },
          )
        ],
      ),
    );
  }
}
