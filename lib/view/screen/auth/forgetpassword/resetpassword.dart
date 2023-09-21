import 'package:e_course/core/constant/color.dart';
import 'package:e_course/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../controller/auth/resetpassword_controller.dart';
import '../../../widget/auth/custombuttomauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';


class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
     ResetPasswordControllerImp  controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Initialiser votre Mot de passe', style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 31),
        child: ListView(children: [
          const     SizedBox(height: 20,),
               CustomTextTitleAuth(text: "35".tr),
          const     SizedBox(height: 10,),
               CustomTextBodyAuth
            (text: "35".tr),
          const   SizedBox(height: 15,),

          CustomTextFormAuth(
            hinttext: "13".tr,
            labeltext:  "19".tr,
            iconData: Icons.lock_clock_outlined,
            mycontroller: controller.password,
          ),
          CustomTextFormAuth(
            hinttext: "Re" + " " + "13".tr,
            labeltext:"19".tr ,
            iconData: Icons.lock_clock_outlined,
            mycontroller: controller.password,
          ),

          CustomButtomAuth(text: "33".tr, onPressed: (){
            controller.goToSuccessResetPassword();
          },),
          const SizedBox(height: 30,),

        ],),
      ),
    );
  }
}
