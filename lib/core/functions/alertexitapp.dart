import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/color.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "Notification",
      titleStyle:const  TextStyle(color: AppColor.primaryColor , fontWeight: FontWeight.bold),
      middleText: "Do you want to exit the application?",
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
            child:const Text("Cancel"))
      ]);
  return Future.value(true);
}