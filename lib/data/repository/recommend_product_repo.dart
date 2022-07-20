import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/utils/constants.dart';
import 'package:get/get.dart';

class RecommendProductRepo extends GetxService {
  final ApiClient apiClient;

  RecommendProductRepo({required this.apiClient});

  Future<Response> getRecommendProductList() async {
    return await apiClient.getData(Constants.RECOMMENDED_PRODUCT_URI);
  }
}
