import 'package:e_course/core/constant/imgaeasset.dart';
import 'package:flutter/cupertino.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAsset.logo, height: 170,);
  }
}
