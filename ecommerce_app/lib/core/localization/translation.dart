import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en": {
          "Next": "Next",
          "choose_your_language": "Choose Your Language",
          "arabic": "Arabic",
          "english": "English",
        },
        "ar": {
          "Next": "التالي",
          "choose_your_language": "اختر لغتك",
          "arabic": "العربية",
          "english": "الإنجليزية",
          "success_reset_password": "نجاح إعادة تعيين كلمة المرور",
          "success_signup": "نجاح التسجيل",
          
          
        },
      };
}