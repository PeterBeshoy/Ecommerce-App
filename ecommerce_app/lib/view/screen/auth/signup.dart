import 'package:ecommerce_app/controller/auth/signup_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/constant/function/validinput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  static final _formKey = GlobalKey<FormState>();
  static final TextEditingController usernameController = TextEditingController();
  static final TextEditingController phoneController = TextEditingController();
  static final TextEditingController emailController = TextEditingController();
  static final TextEditingController passwordController = TextEditingController();

  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Sign Up", style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: ListView(
          children: [
            Text(
              "Create Account",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontSize: 35),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Sign Up with your email and password or continue with social media",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: controller.username,
                    decoration: const InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      label: Text("Username"),
                      hintText: "Enter your username",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      suffixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    validator: (value) {
                      return validInput(value!, 3, 15, "username");
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: controller.phone,
                    decoration: const InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      label: Text("Phone"),
                      hintText: "Enter your phone number",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      suffixIcon: Icon(Icons.phone_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    validator: (value) {
                      return validInput(value!, 11, 11, "phone");
                    },
                  ),
                  const SizedBox(height: 20),
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
                    validator: (value) {
                      return validInput(value!, 5, 50, "email");
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: controller.password,
                    obscureText: true,
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
                    validator: (value) {
                      return validInput(value!, 8, 20, "password");
                    },
                  ),
                  const SizedBox(height: 50),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 13),
                    onPressed: () { 
                      if (_formKey.currentState!.validate()) {
                        controller.signUp();
                      }
                    },
                    color: AppColor.primaryColor,
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                InkWell(
                  onTap: () {
                    controller.goToLogin();
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(color: AppColor.primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}