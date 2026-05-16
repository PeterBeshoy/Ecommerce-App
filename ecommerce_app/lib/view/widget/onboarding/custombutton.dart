import 'package:flutter/material.dart';

class CustomButtonOnBoarding extends StatelessWidget {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       
                    height: 40,
                    margin: const EdgeInsets.only(top: 40),
                    color: Colors.blue,
                    child: MaterialButton(
                      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      onPressed: () {},
                      textColor: Colors.white,
                      child: Text("Get Started"),

                    ),
                  ); 
    
  }
}