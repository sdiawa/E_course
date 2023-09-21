import 'package:e_course/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {

  goToPageLogin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {


  @override
  goToPageLogin() {
    Get.offNamed(AppRoute.login);


  }

}