import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class CustomDotcontrollerOnBoarding extends StatelessWidget {
  const CustomDotcontrollerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        onBoardingList.length,
                        (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  );
  }
}