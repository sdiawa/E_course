import 'package:e_course/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {

  goToPageLogin();
}

class SuccessSignUpControllerControllerImp extends SuccessSignUpController {


  @override
  goToPageLogin() {
    Get.offNamed(AppRoute.login);


  }

}