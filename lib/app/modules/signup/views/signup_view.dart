import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:moviepass/app/data/constant/colors.dart';
import 'package:moviepass/app/routes/app_pages.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: tBackgroundColor,
          body: Container(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          "Create Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Email Address",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  ),
                  TextFormField(
                      controller: controller.emailC,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: const Color(0xFFCEA716),
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: "alghifary086@gmail.com",
                          hintStyle:
                              TextStyle(color: Colors.white54, fontSize: 14),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFCEA716))),
                          border: UnderlineInputBorder(),
                          hoverColor: Colors.white)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Phone Number",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500),
                  ),
                  TextFormField(
                      controller: controller.phoneNo,
                      keyboardType: TextInputType.phone,
                      cursorColor: const Color(0xFFCEA716),
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          hintText: "+628131154114",
                          hintStyle:
                              TextStyle(color: Colors.white54, fontSize: 14),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFCEA716))),
                          border: UnderlineInputBorder(),
                          hoverColor: Colors.white)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500),
                  ),
                  Obx(() => TextFormField(
                      obscureText: controller.isPasswordHidden.value,
                      cursorColor: const Color(0xFFCEA716),
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelStyle: const TextStyle(color: Colors.white),
                          hintText: "************",
                          suffixIcon: IconButton(
                              onPressed: () {
                                controller.isPasswordHidden.toggle();
                              },
                              icon: Icon(
                                controller.isPasswordHidden.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white.withOpacity(0.3),
                              )),
                          hintStyle: const TextStyle(
                              color: Colors.white54, fontSize: 14),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFCEA716))),
                          border: const UnderlineInputBorder(),
                          hoverColor: Colors.white))),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Confirm Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500),
                  ),
                  Obx(() => TextFormField(
                      controller: controller.confirmPasswordC,
                      obscureText: controller.isConfirmPasswordHidden.value,
                      cursorColor: const Color(0xFFCEA716),
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelStyle: const TextStyle(color: Colors.white),
                          hintText: "************",
                          suffixIcon: IconButton(
                              onPressed: () {
                                controller.isConfirmPasswordHidden.toggle();
                              },
                              icon: Icon(
                                controller.isConfirmPasswordHidden.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white.withOpacity(0.3),
                              )),
                          hintStyle: const TextStyle(
                              color: Colors.white54, fontSize: 14),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFCEA716))),
                          border: const UnderlineInputBorder(),
                          hoverColor: Colors.white))),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.registerUser();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFCEA716),
                        minimumSize: const Size(345, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          letterSpacing: 1,
                          color: Color(0xFF161616)),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/images/Line 1.png")),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "or",
                        style: TextStyle(color: Colors.white54),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(image: AssetImage("assets/images/Line 1.png")),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Image(
                          image: AssetImage("assets/images/icon_google.png")),
                      style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFFCEA716),
                          minimumSize: const Size(350, 50),
                          side: const BorderSide(color: Colors.white),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      label: const Text("Continue with Google",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 16,
                          )))
                ],
              ),
            ),
          )),
    );
  }
}
