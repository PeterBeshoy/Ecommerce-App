import 'package:ecommerce_app/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce_app/view/widget/onboarding/customslider.dart';
import 'package:ecommerce_app/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';



class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: const CustomSliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const CustomDotcontrollerOnBoarding(),
                  const CustomButtonOnBoarding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
