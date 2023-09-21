import 'package:e_course/controller/auth/successignup_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/custombuttomauth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerControllerImp controller =
    Get.put(SuccessSignUpControllerControllerImp());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('32'.tr, style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),
      ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Center(child:
            Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor)
            ),
            Text("37".tr,
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 30)),
            Text("38".tr),
           const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomButtomAuth(
                text: "31".tr,
                onPressed: (){
                  controller.goToPageLogin();
              },),
            ),
            const SizedBox(height: 30,)
          ],
        ),

      ),
    );
  }
}
