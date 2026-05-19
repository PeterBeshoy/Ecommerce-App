import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          bodyMedium: TextStyle(
                          height: 2,
                          color: AppColor.grey,
                          fontSize: 15,
                        ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
