import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/localization/changelocal.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  Get.put(LocaleController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.find<LocaleController>();
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      locale: controller.lang ?? const Locale('en'),
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          bodyMedium: TextStyle(
                          height: 2,
                          color: AppColor.grey,
                          fontSize: 15,
                        ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const LanguageScreen(),
      routes: routes,
    );
  }
}
