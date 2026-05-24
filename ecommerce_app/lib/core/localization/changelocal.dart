import 'dart:ui';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController{
 Locale? lang;
 MyServices myServices = Get.find();

 changeLang(String s){
   if(s == "ar"){
     lang = const Locale("ar");
     myServices.sharedPreferences.setString("lang", "ar");
   }else{
     lang = const Locale("en");
     myServices.sharedPreferences.setString("lang", "en");
   }
   Get.updateLocale(lang!);
   update();
 }
  @override
    void onInit() {
      String? sharedLang = myServices.sharedPreferences.getString("lang");
      if(sharedLang == "ar"){
        lang = const Locale("ar");
      }else{
        lang = const Locale("en");
      }
      super.onInit();
    }
}