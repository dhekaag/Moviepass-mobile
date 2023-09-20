import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviepass/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF161616),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              const Image(
                image: AssetImage(
                  "assets/images/Login Foto.png",
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Center(
                          child: Image(
                              image:
                                  AssetImage("assets/images/Moviepass.png"))),
                    ),
                    const Center(
                      child: Text(
                        "Discover, book, and enjoy movies like never before.",
                        style: TextStyle(
                          fontFamily: "Jost",
                          fontSize: 13,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
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
                                borderSide:
                                    BorderSide(color: Color(0xFFCEA716))),
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
                                borderSide:
                                    BorderSide(color: Color(0xFFCEA716))),
                            border: const UnderlineInputBorder(),
                            hoverColor: Colors.white))),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => TextButton.icon(
                            onPressed: () {
                              controller.rememberMe.toggle();
                            },
                            icon: controller.rememberMe.isFalse
                                ? const Icon(Icons.check_box_outline_blank)
                                : const Icon(Icons.check_box,
                                    color: Color(0xFFCEA716)),
                            style: const ButtonStyle(
                                iconColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            label: const Text(
                              "Remember me",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontSize: 12),
                            ))),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgot password?",
                              style: TextStyle(color: Color(0xFFCEA716)),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.offAllNamed(Routes.HOME);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFCEA716),
                          minimumSize: const Size(345, 45),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text(
                        "LOG IN",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            letterSpacing: 1,
                            color: Color(0xFF161616)),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
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
                    const Center(
                      child: Text(
                        "Don't have an account yet?",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 10),
                      ),
                    ),
                    OutlinedButton(
                        onPressed: () {
                          Get.toNamed(Routes.SIGNUP);
                        },
                        style: OutlinedButton.styleFrom(
                            minimumSize: const Size(350, 50),
                            side: const BorderSide(color: Colors.white),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
