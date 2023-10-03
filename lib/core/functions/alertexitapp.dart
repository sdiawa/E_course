import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/color.dart';
Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "Notification",
      titleStyle:const  TextStyle(color: AppColor.primaryColor , fontWeight: FontWeight.bold),
      middleText: "Souhaitez-vous quitter l'application?",
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              exit(0);
            },
            child:const Text("Confirmation")),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              Get.back();
            },
            child:const Text("Annuler"))
      ]);
  return Future.value(true);
}
