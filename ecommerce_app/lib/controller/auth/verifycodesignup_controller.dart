import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignupController extends GetxController {
  checkCode();
  goToSuccessSignup();
}

class VerifyCodeSignupControllerImp extends VerifyCodeSignupController {
 
 late String verifyCode ;
  
  @override
  checkCode() {}

  @override
  goToSuccessSignup() {
    Get.offNamed(AppRoute.succsessSignUp);
  }

  @override
  void onInit() {
    
  
    super.onInit();
  }


}
