import 'package:e_course/controller/auth/login_controller.dart';
import 'package:e_course/core/constant/color.dart';
import 'package:e_course/view/widget/auth/customtextbodyauth.dart';
import 'package:e_course/view/widget/auth/logoauth.dart';
import 'package:e_course/view/widget/auth/textsignup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widget/auth/custombuttomauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller =Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Se connecter', style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 31),
        child: ListView(children: [
          const     LogoAuth(),
               CustomTextTitleAuth(text: "10".tr),
          const     SizedBox(height: 10,),
               CustomTextBodyAuth(
             text:
             "11".tr),
          const   SizedBox(height: 15,),
             CustomTextFormAuth(
               hinttext: "12".tr,
               labeltext: "18".tr,
            iconData: Icons.email_outlined,
            mycontroller: controller.email,
           // mycontroller: null,
          ),
            CustomTextFormAuth(
            hinttext:  "13".tr,
              labeltext: "19".tr,
            iconData: Icons.lock_clock_outlined,
             mycontroller: controller.password,
          ),
          InkWell(
            onTap: (){
              controller.goToForgetPassword();

            },
            child:   Text(
              "14".tr,
              textAlign: TextAlign.end,
            ),
          ),
          CustomButtomAuth(text: "15".tr,  onPressed: (){},),
          const SizedBox(height: 40,),
         CustomTextSignUpOrSignIn(
           textone: "16".tr,
           texttwo: "17".tr,
           onTap: () {
             controller.goToSignUp();
           },
         )
        ],),
      ),
    );
  }
}
