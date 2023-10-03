
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import '../../core/localization/changelocal.dart';
import '../widget/language/custombuttomlang.dart';



class Language extends GetView<LocaleController> {
const Language({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
body: Container(
padding: const EdgeInsets.all(15),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text("1".tr, style: Theme.of(context).textTheme.headline1,),
const SizedBox(height: 20,),
CustomButtonLang(textbutton: 'Fr', onPressed: (){
controller.changeLang("fr");
Get.toNamed(AppRoute.onBoarding);
},),
CustomButtonLang(textbutton: 'En', onPressed: (){
controller.changeLang("en");
Get.toNamed(AppRoute.onBoarding);
},),

],
),

),
);
}
}