import 'package:flutter/material.dart';
import 'package:traveler/core/constant/app_route.dart';
import 'package:traveler/screen/auth/confirm_phone.dart';
import 'package:traveler/screen/auth/confirm_phone_forgetpass.dart';
import 'package:traveler/screen/auth/forget_password.dart';
import 'package:traveler/screen/auth/reset_password.dart';
import 'package:traveler/screen/auth/sign_up.dart';
import 'package:traveler/screen/details/details.dart';
import 'package:traveler/screen/home_page/home_page.dart';
import 'package:traveler/screen/onboarding/onboarding.dart';

import 'screen/auth/sign_in.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.signIn: (context) => const SignIn(),
  AppRoute.onBoarding: (context) => const OnBoarding(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.homePage: (context) => const HomePage(),
  AppRoute.confirmPhone: (context) => const ConfirmPhone(),
  AppRoute.confirmPhoneForgetPassword: (context) =>
      const ConfirmPhoneForgetPassword(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.detailsPage: (context) => const Details()
};
