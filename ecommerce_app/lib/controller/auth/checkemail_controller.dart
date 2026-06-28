import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



abstract class CheckEmailController extends GetxController {
  checkemail();
  goToVerifyCodeSignUp();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;
  
  @override
  checkemail() {}

  @override
  goToVerifyCodeSignUp() {
    Get.offNamed(AppRoute.verifyCodeSignUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
  
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
   
    super.dispose();
  }
}
