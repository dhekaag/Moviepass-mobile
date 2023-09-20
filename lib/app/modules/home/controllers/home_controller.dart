import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  CarouselController carouselController = CarouselController();
  var current = 0.obs;
  dynamic selectedIndex = {};
}
