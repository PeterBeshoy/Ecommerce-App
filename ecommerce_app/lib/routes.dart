import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/view/screen/auth/checkemail.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/resetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/auth/success_signup.dart';
import 'package:ecommerce_app/view/screen/auth/succsess_resetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/verifycode.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
 
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.onboarding: (context) => const OnBoarding(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verifyCode: (context) => const VerifyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.succsessResetPassword: (context) => const SuccessResetPassword(),
  AppRoute.succsessSignUp: (context) => const SuccessSignup(),
  AppRoute.checkEmail: (context) => const CheckEmail(),
};