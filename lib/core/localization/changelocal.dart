import 'dart:ui';
import 'package:e_course/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/apptheme.dart';

class LocaleController extends GetxController{
  Locale? language;

  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;

  changeLang(String langcode){
    Locale locale =Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme = langcode == "en" ? themeFrench : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }
  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if( sharedPrefLang == "fr"){
      language = const Locale("fr");
      appTheme = themeFrench;
    }else if (sharedPrefLang == "en"){
      language = const Locale("en");
      appTheme = themeEnglish;
    } else{
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeFrench;
    }
    super.onInit();
  }

}