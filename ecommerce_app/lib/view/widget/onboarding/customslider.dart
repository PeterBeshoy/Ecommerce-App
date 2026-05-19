import 'package:ecommerce_app/controller/onboardingcontroller.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (index) {
        controller.onPageChanged(index);

      },
                itemCount: onBoardingList.length,
                itemBuilder: (context, i) => Column(
                  children: [
                    Text(
                      onBoardingList[i].title!,
                      style: Theme.of(context).textTheme.headlineLarge, 
                    ),
                    SizedBox(height: 60),
                    Image.asset(onBoardingList[i].image!, fit: BoxFit.fill),
                    SizedBox(height: 40),

                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        onBoardingList[i].body!,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,  
                      ),
                    ),
                  ],
                ),
              );
  }
}