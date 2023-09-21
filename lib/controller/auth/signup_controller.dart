
import 'package:e_course/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController username;


  @override
  signUp() {
    Get.offNamed(AppRoute.checkemail);
  }
  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);


  }
  @override
  void onInit() {
    email = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    username.dispose();
    phone.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }



}