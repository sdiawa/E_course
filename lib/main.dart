import 'package:e_course/core/localization/changelocal.dart';
import 'package:e_course/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constant/color.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';
import 'routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}
class  MyApp extends StatelessWidget {
  const MyApp ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'dsk',
     locale: controller.language,
     theme: controller.appTheme,
      home: const Language(),
     // Test(),
      routes: routes,

    );
  }
}