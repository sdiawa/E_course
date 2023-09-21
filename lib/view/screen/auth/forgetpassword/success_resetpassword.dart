import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/color.dart';
import '../../../widget/auth/custombuttomauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Verification success', style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Center(child:
            Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor)
            ),
            Text("37".tr , style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 30)),
            Text("36".tr),
           const Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtomAuth(text: "31".tr,
                onPressed: (){
                  //controller.signUp();
                },),
            ),
            SizedBox(height: 30,)
          ],
        ),

      ),
    );
  }
}
