import 'package:ecommerce_app/controller/onboardingcontroller.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';


class CustomDotcontrollerOnBoarding extends StatelessWidget {
  const CustomDotcontrollerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          onBoardingList.length,
          (index) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            width: controller.currentPage == index ? 20 : 10,
            height: 10,
            decoration: BoxDecoration(
              color: controller.currentPage == index
                  ? Colors.blue
                  : Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}