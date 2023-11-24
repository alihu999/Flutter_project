import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveler/core/constant/color.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData iconData;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final TextInputType? keyboardtype;
  final void Function(String)? onFieldSubmitted;
  final bool? obscureText;
  final void Function()? onTap;
  final FocusNode? focusNode;
  const CustomTextField(
      {super.key,
      required this.label,
      required this.iconData,
      required this.validator,
      required this.controller,
      this.keyboardtype,
      this.onFieldSubmitted,
      this.obscureText,
      this.onTap,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(
          top: screenHight * 0.062,
          right: screenHight * 0.037,
          left: screenHight * 0.037),
      child: TextFormField(
          focusNode: focusNode,
          style: const TextStyle(color: Colors.black),
          keyboardType: keyboardtype,
          controller: controller,
          validator: validator,
          obscureText:
              obscureText == null || obscureText == false ? false : true,
          onFieldSubmitted: onFieldSubmitted,
          decoration: InputDecoration(
              label: Text(label),
              labelStyle: TextStyle(fontSize: 20, color: AppColor.thirdColor),
              hintStyle: const TextStyle(fontSize: 15),
              hintText: "Enter your".tr + label,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
              suffixIcon: InkWell(
                onTap: onTap,
                child: Icon(iconData),
              ),
              suffixIconColor: AppColor.thirdColor,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: AppColor.thirdColor),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(color: Colors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(color: Colors.red),
              ))),
    );
  }
}
