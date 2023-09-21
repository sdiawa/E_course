import 'package:e_course/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkmail();
  goToVerfiycode();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;

  @override
  checkmail() {}

  @override
  goToVerfiycode() {
    Get.offNamed(AppRoute.verfiyCodeSignUp);


  }
  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }



}