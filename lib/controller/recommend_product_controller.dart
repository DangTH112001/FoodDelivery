//import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:food_delivery/data/repository/recommend_product_repo.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:get/get.dart';

class RecommendProductController extends GetxController {
  final RecommendProductRepo recommendProductRepo;
  RecommendProductController({required this.recommendProductRepo});
  List<dynamic> _recommendProdutList = [];
  List<dynamic> get recommendProductList => _recommendProdutList;
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendProductList() async {
    Response response = await recommendProductRepo.getRecommendProductList();
    if (response.statusCode == 200) {
      //print('got recommend product');
      _recommendProdutList = [];
      _recommendProdutList.addAll(Product.fromJson(response.body).products);

      _isLoaded = true;
      update();
    } else {}
  }
}
