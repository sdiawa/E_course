import 'package:e_course/core/constant/routes.dart';
import 'package:e_course/core/middleware/mymiddleware.dart';

import 'package:e_course/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:e_course/view/screen/auth/forgetpassword/verifycodesignup.dart';
import 'package:e_course/view/screen/auth/login.dart';
import 'package:e_course/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:e_course/view/screen/auth/signup.dart';
import 'package:e_course/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:e_course/view/screen/auth/success_signup.dart';
import 'package:e_course/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:e_course/view/screen/language.dart';
import 'package:e_course/view/screen/onboarding.dart';

import 'package:get/get.dart';
List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language() , middlewares: [
    MyMiddleWare()
  ]),
  GetPage(name: AppRoute.login , page:() => const Login()),
  GetPage(name: AppRoute.signUp, page:() => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page:() => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page:() => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page:() => const ResetPassword()),
  GetPage(name: AppRoute.successResetpassword, page:() => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page:() =>  const SuccessSignUp()),
  GetPage(name: AppRoute.verfiyCodeSignUp, page:() =>  const VerfiyCodeSignUp()),
  GetPage(name: AppRoute.onBoarding, page:() =>  const OnBoarding()),

];

