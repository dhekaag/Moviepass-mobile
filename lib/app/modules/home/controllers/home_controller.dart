import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  CarouselController carouselController = CarouselController();
  var current = 0.obs;
  dynamic selectedIndex = {}.obs;

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
    },
  ];

  List city = ["Jakarta", "Bogor", "Cilegon", "Depok", "Tangerang", "Bekasi"];
}
