import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:moviepass/app/data/constant/colors.dart';
import 'package:moviepass/app/modules/home/models/movie_models.dart';
import 'package:moviepass/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

// ignore: must_be_immutable
class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  List<dynamic> products = [
    {
      'title': 'Fast and Forius X',
      'image': 'assets/images/fastx_movie.png',
      'description': 'Fast and Forius X'
    },
    {
      'title': 'Guardian of the Galaxy',
      'image': 'assets/images/gotg_movie.png',
      'description': 'Guardian of the Galaxy'
    },
    {
      'title': 'Top Gun',
      'image': 'assets/images/topgun_movie.png',
      'description': 'Top Gun'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tBackgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.offAllNamed(Routes.LOGIN);
        },
        child: const Icon(Icons.logout),
      ),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'HomeView',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: CarouselSlider(
            carouselController: controller.carouselController,
            options: CarouselOptions(
                height: 450.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.70,
                enlargeCenterPage: true,
                pageSnapping: true,
                onPageChanged: (index, reason) {
                  controller.current.value = index;
                }),
            items: products.map((movie) {
              return Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      if (controller.selectedIndex == movie) {
                        controller.selectedIndex = {};
                      } else {
                        controller.selectedIndex = movie;
                      }
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: controller.selectedIndex == movie
                              ? Border.all(
                                  color: Colors.blue.shade500, width: 3)
                              : null,
                          boxShadow: controller.selectedIndex == movie
                              ? [
                                  BoxShadow(
                                      color: Colors.blue.shade100,
                                      blurRadius: 30,
                                      offset: const Offset(0, 10))
                                ]
                              : [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 20,
                                      offset: const Offset(0, 5))
                                ]),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: 320,
                              margin: const EdgeInsets.only(top: 10),
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(movie['image'],
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              movie['title'],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              movie['description'],
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList()),
      ),
    );
  }
}
