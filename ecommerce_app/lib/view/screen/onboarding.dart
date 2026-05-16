import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

import '../../data/datasource/static/static.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:SafeArea(child:
        PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) => Column(
          children: [
            Text(onBoardingList[i].title! , style:const TextStyle(fontWeight:FontWeight.bold ,fontSize: 20 ),),
            SizedBox(height: 60,),
            Image.asset(onBoardingList[i].image! ,fit: BoxFit.fill, ),
            SizedBox(height: 40,),
            
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(onBoardingList[i].body!,textAlign: TextAlign.center,style: TextStyle(height: 2,color: AppColor.grey ,fontSize: 15),),
              
              ),
          ],
        ),))

      
    

      
    );
  }
}