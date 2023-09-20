import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  var isPasswordHidden = true.obs;
  var rememberMe = false.obs;
}
