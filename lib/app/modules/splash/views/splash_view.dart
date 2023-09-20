import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:moviepass/app/modules/signup/controllers/signup_controller.dart';
import 'package:moviepass/app/routes/app_pages.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF161616),
        body: Center(
            child: SizedBox(
                width: 250,
                child: Image(
                    image: AssetImage("assets/images/Logo_moviepass.png")))),
      ),
    );
  }
}
