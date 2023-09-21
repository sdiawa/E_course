import 'package:e_course/core/constant/routes.dart';
import 'package:e_course/view/screen/auth/checkemail.dart';
import 'package:e_course/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:e_course/view/screen/auth/login.dart';
import 'package:e_course/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:e_course/view/screen/auth/signup.dart';
import 'package:e_course/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:e_course/view/screen/auth/success_signup.dart';
import 'package:e_course/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:e_course/view/screen/onboarding.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerfiyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.checkemail: (context) => const CheckEmail(),
  AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
   // OnBoarding
  AppRoute.onBoarding: (context) => const OnBoarding(),



};


