import 'package:e_course/controller/onboarding_controller.dart';
import 'package:e_course/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import '../widget/onboarding/custombutton.dart';
import '../widget/onboarding/customslider.dart';
import '../widget/onboarding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
        child: Column(
          children: [
              Expanded(
              flex: 4,
              child:  CustomSliderOnBoarding(),
            ),
             Expanded (
                flex: 1,
                child: Column(
              children:  [
                 CustomDotControllerOnBoarding(),
                 Spacer(flex: 2,),
                 CustomButtonOnBoarding()
              ],
            ))
          ],
        )
      )
    );
  }
}
