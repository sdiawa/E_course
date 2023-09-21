import 'package:e_course/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String verifycode;


  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);


  }
  @override
  void onInit() {

    super.onInit();
  }

}