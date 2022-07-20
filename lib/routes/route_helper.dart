import 'package:food_delivery/pages/food_details/popular_food_details.dart';
import 'package:food_delivery/pages/food_details/recommended_food_detail.dart';
import 'package:food_delivery/pages/home_page/main_home_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = '/';
  static const String popularFood = '/popular-food';
  static const String recommendFood = '/recommend-food';

  static String getInitial() => initial;
  static String getPopularFood(int pageID) => '$popularFood?pageID=$pageID';
  static String getRecommendFood() => recommendFood;

  static List<GetPage> routes = [
    GetPage(name: '/', page: () => const MainHomePage()),
    GetPage(
      name: popularFood,
      page: () {
        var pageID = Get.parameters['pageID'];
        return PopularFoodDetail(
          pageID: int.parse(pageID!),
        );
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: recommendFood,
      page: () => const RecommendFoodDetail(),
      transition: Transition.fadeIn,
    ),
  ];
}
