import 'package:flutter/material.dart';
import 'package:food_delivery/controller/recommend_product_controller.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/constants.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/content_text.dart';
import 'package:food_delivery/widgets/product_status.dart';
import 'package:food_delivery/widgets/title_text.dart';
import 'package:get/get.dart';

class ListOfFood extends StatefulWidget {
  const ListOfFood({Key? key}) : super(key: key);

  @override
  State<ListOfFood> createState() => _ListOfFoodState();
}

class _ListOfFoodState extends State<ListOfFood> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RecommendProductController>(builder: (recommendProduct) {
      return recommendProduct.isLoaded
          ? ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: recommendProduct.recommendProductList.length,
              itemBuilder: (context, index) {
                return _FoodCard(recommendProduct.recommendProductList[index]);
              },
            )
          : const CircularProgressIndicator(
              color: DefaultColor.themeColor,
            );
    });
  }

  // ignore: non_constant_identifier_names
  Widget _FoodCard(ProductModel recommendProduct) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(RouteHelper.recommendFood);
      },
      child: Container(
          margin: EdgeInsets.only(
              left: Dimensions.width20,
              right: Dimensions.width20,
              bottom: Dimensions.height10),
          child: Row(
            children: [
              Container(
                width: Dimensions.listViewImg,
                height: Dimensions.listViewImg,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: Colors.white38,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        '${Constants.BASE_URL}${Constants.UPLOAD_URL}${recommendProduct.img!}'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: Dimensions.listViewTextCon,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5),
                      ),
                      BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(5, 0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width10, right: Dimensions.width10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TitleText(
                              text: recommendProduct.name!,
                              color: DefaultColor.textColor),
                          SizedBox(height: Dimensions.height10),
                          ContentText(
                            text: recommendProduct.description!,
                            overFlow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: Dimensions.height10),
                          const ProductStatus(),
                        ]),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
