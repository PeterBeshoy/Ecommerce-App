import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/localization/changelocal.dart';
import 'package:ecommerce_app/view/widget/language/custombuttonlanguage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends GetView<LocaleController> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("choose_your_language".tr,style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: 20,),
           Custombuttonlanguage(text: "arabic".tr,onPressed: () {
              controller.changeLang("ar");
              Get.toNamed( AppRoute.onboarding);
           },),
           Custombuttonlanguage(text: "english".tr,onPressed: () {
              controller.changeLang("en");
              Get.toNamed( AppRoute.onboarding);
           },),
          ],
        ),
      ),
    );
  }
}
