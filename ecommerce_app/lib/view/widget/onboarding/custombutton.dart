import 'package:ecommerce_app/controller/onboardingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       
                    height: 40,
                    margin: const EdgeInsets.only(top: 40),
                    color: Colors.blue,
                    child: MaterialButton(
                      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      onPressed: () {
                        controller.next();
                      },
                      textColor: Colors.white,
                      child: Text("Next".tr),

                    ),
                  ); 
    
  }
}