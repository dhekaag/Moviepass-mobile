import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviepass/app/data/constant/colors.dart';
import 'package:moviepass/app/routes/app_pages.dart';
import 'package:searchfield/searchfield.dart';

import '../controllers/home_controller.dart';

// ignore: must_be_immutable
class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tBackgroundColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFCEA716),
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
          'Moviepass',
          style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: 240,
                  height: 35,
                  child: SearchField(
                    suggestions: controller.city
                        .map((e) => SearchFieldListItem(e))
                        .toList(),
                    suggestionState: Suggestion.expand,
                    textInputAction: TextInputAction.next,
                    searchStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    searchInputDecoration: const InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        suffixIcon: Icon(Icons.arrow_drop_down_sharp,
                            color: Colors.white),
                        hintText: "Jakarta",
                        prefixIcon: Image(
                            image: AssetImage("assets/images/Location.png")),
                        hintStyle: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.white,
                          height: 1.5,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white))),
                    maxSuggestionsInViewPort: 6,
                    itemHeight: 40,
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.white,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_outline,
                      color: Colors.white,
                      size: 30,
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
              carouselController: controller.carouselController,
              options: CarouselOptions(
                  height: 320.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.48,
                  enlargeCenterPage: true,
                  pageSnapping: true,
                  onPageChanged: (index, reason) {
                    controller.current.value = index;
                  }),
              items: controller.products.map((movie) {
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
                      child: SingleChildScrollView(
                        child: Container(
                          height: 260,
                          margin: const EdgeInsets.only(top: 10),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(movie['image'], fit: BoxFit.cover),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Colors.white,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Movie news",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(color: Color(0xFFCEA716)),
                      ))
                ],
              ),
            ),
            SizedBox(
                height: 190,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      child: Container(
                        width: 290,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF323439)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 122,
                                child: Image.asset(
                                    "assets/images/barbie_movie.png")),
                            const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Everything We Know About the Upcoming Barbie Movie with Margot Robbie",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: "Poppins",
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      child: Container(
                        width: 290,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF323439)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 290,
                              height: 124,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: Image.asset(
                                "assets/images/tf_movie.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Everything We Know About the Upcoming Barbie Movie with Margot Robbie",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: "Poppins",
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}
