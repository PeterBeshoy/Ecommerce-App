import 'package:ecommerce_app/controller/auth/logincontroller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller =Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Sign In", style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: ListView(
          children: [
            Image.asset(ImageAsset.Logo, height: 150),
            Text(
              "Welcome Back!",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontSize: 35),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Sign In with your email and password or continue with social media",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                label: Text("Email"),
                hintText: "Enter your email",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                suffixIcon: Icon(Icons.email_outlined),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                label: Text("Password"),
                hintText: "Enter your password",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                suffixIcon: Icon(Icons.lock_outlined),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      controller.goToForgetPassword();
                    },
                    child: Text(
                      "Forget Password?",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
             shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 13),
              onPressed: () {},
              color: AppColor.primaryColor,
              child: const Text(
                "Sign In",
                style: TextStyle(color: Colors.white, fontSize: 18, ),
              ),
            ),
            const SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                InkWell(
                  onTap: () {
                    controller.goToSignUp();
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: AppColor.primaryColor),
                  ),
                ),
              ],
             )
          ],
        ),
      ),
    );
  }
}
