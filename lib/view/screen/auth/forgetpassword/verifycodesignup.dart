import 'package:e_course/core/constant/color.dart';
import 'package:e_course/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../controller/auth/verifycodesignup_controller.dart';
import '../../../widget/auth/customtexttitleauth.dart';


class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp  controller =
    Get.put(VerifyCodeSignUpControllerImp());
    // ResetPasswordControllerImp  controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Verification Code', style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 31),
        child: ListView(children: [
          const     SizedBox(height: 20,),
          const     CustomTextTitleAuth(text: "Verifier code",),
          const     SizedBox(height: 10,),
          const     CustomTextBodyAuth(
            text:
            "Entre le code envoyer à dsk@gmail.com",),
          const   SizedBox(height: 15,),

          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode){
              controller.goToSuccessSignUp();
            },
          ),
          const SizedBox(height: 30,),
        ],),
      ),
    );
  }
}
