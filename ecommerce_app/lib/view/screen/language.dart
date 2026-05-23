import 'package:ecommerce_app/view/widget/language/custombuttonlanguage.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choose Your Language",style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: 20,),
           Custombuttonlanguage(text: "Ar",onPressed: () {},),
           Custombuttonlanguage(text: "En",onPressed: () {},),
          ],
        ),
      ),
    );
  }
}
