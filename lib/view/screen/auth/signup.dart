import 'package:e_course/core/constant/color.dart';
import 'package:e_course/view/widget/auth/customtextbodyauth.dart';
import 'package:e_course/view/widget/auth/textsignup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttomauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    //Get.lazyPut(() => SignUpControllerImp());
    SignUpControllerImp controller = Get.put(SignUpControllerImp()) ;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('17'.tr,style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),
      ),

      body: WillPopScope(
      onWillPop: alertExitApp,
      child: Container(
        padding:
        const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
            const SizedBox(height: 20),
            CustomTextTitleAuth(text: "10".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(text: "24".tr),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              isNumber: false,
              valid: (val){
                return validInput(val!, 3, 20, "username");
              },
              mycontroller: controller.username,
              hinttext:  "23".tr,
              labeltext:"20".tr,
              iconData: Icons.person_outline,

            ),
            CustomTextFormAuth(
              isNumber: false,
              valid: (val){
                return validInput(val!, 3, 40, "email");
              },
              hinttext: "12".tr,
              labeltext: "18".tr,
              iconData: Icons.email_outlined,
              mycontroller: controller.email,

            ),
            CustomTextFormAuth(
              isNumber: false,
              valid: (val){
                return validInput(val!, 8, 13, "phone");
              },
              hinttext: "22".tr,
              labeltext: "21".tr,
              iconData: Icons.phone_android_outlined,
              mycontroller: controller.phone,

            ),
            CustomTextFormAuth(
              isNumber: false,
              valid: (val){
                return validInput(val!, 8, 30, "password");
              },
              hinttext: "13".tr,
              labeltext: "19".tr,
              iconData: Icons.lock_clock_outlined,
              mycontroller: controller.password,

            ),

            CustomButtomAuth(
              text: "17".tr,
              onPressed: (){
                controller.signUp();
              },),
            const SizedBox(height: 30,),
            CustomTextSignUpOrSignIn(
              textone: "25".tr,
              texttwo: "26".tr,
              onTap: (){
                controller.goToSignIn();
              },
            ),
          ]),
        ),
      ),
      ) ,
    );
  }
}