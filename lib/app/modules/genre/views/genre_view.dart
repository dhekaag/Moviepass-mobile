import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:moviepass/app/data/constant/colors.dart';
import 'package:moviepass/app/routes/app_pages.dart';

import '../controllers/genre_controller.dart';

class GenreView extends GetView<GenreController> {
  const GenreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: tBackgroundColor,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.offAllNamed(Routes.HOME);
            },
            backgroundColor: const Color(0xFFCEA716),
            child: const Icon(
              Icons.navigate_next,
              color: Colors.white,
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    child: const Text(
                      "What genres do you like?",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    child: const Text(
                      "Choose your favorite genre!",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Center(
                      child:
                          Image(image: AssetImage("assets/images/Line3.png"))),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Action",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Romance",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Comedy",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Horror",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Adventure",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Crime",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Animation",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Drama",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Fantasy",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "History",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Family",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Thriller",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Mystery",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 65,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF323439),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Sport",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
