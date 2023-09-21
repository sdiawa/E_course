import 'package:e_course/core/constant/color.dart';
import 'package:e_course/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../controller/auth/forgetpassword_controller.dart';
import '../../../widget/auth/custombuttomauth.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp  controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('14'.tr, style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 31),
        child: Form(
          key: controller.formstate,
          child :ListView(children: [
                const     SizedBox(height: 20,),
                CustomTextTitleAuth(text: "27".tr),
                const     SizedBox(height: 10,),
                    CustomTextBodyAuth(
                  text:
                  "29".tr),
                const   SizedBox(height: 15,),
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val){ },
                  hinttext: "12".tr,
                  labeltext: "18".tr,
                  iconData: Icons.email_outlined,
                  mycontroller: controller.email,
                ),

                CustomButtomAuth(text: "30".tr, onPressed: (){
                  controller.goToVerfiyCode();
                },),
                const SizedBox(height: 30,),

              ],),),

      ),
    );
  }
}
