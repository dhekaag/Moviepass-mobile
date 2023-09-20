import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviepass/app/routes/app_pages.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController confirmPasswordC = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  var isPasswordHidden = true.obs;
  var isConfirmPasswordHidden = true.obs;

  void registerUser() {
    Future.delayed(
      const Duration(seconds: 2),
    )
        .then(
          (value) => const CircularProgressIndicator(),
        )
        .whenComplete(
          () => Get.defaultDialog(
              title: "Success",
              content: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("assets/images/succes.png")),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Congratulations, your register was successful!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              textConfirm: "Next",
              onConfirm: () => Get.toNamed(Routes.GENRE)),
        );
  }
}
