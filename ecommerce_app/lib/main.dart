import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main(){
  runApp(const MyApp());
}


class MyApp extends  StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title:'flutter demo',
      theme:ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const OnBoarding(),
      routes:routes,
    );
  }
}