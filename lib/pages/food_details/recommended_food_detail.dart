import 'package:flutter/material.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/expandable_text.dart';
import 'package:food_delivery/widgets/title_text.dart';
import 'package:get/get.dart';

class RecommendFoodDetail extends StatelessWidget {
  const RecommendFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.initial);
                  },
                  child: Container(
                    width: Dimensions.width40,
                    height: Dimensions.height40,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.height40 / 2),
                        color: DefaultColor.backgroundColor),
                    child: Center(
                      child: Icon(
                        Icons.clear,
                        color: Colors.black,
                        size: Dimensions.iconsize16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: Dimensions.width40,
                  height: Dimensions.height40,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimensions.height40 / 2),
                      color: DefaultColor.backgroundColor),
                  child: Center(
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                      size: Dimensions.iconsize16,
                    ),
                  ),
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                    top: Dimensions.height5, bottom: Dimensions.height10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Color.fromARGB(255, 81, 81, 81),
                      blurRadius: 5.0,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Center(
                    child: TitleText(
                  text: 'Hallow knight',
                  size: Dimensions.font26,
                )),
              ),
            ),
            pinned: true,
            backgroundColor: DefaultColor.themeColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              'assets/images/food01.png',
              width: double.maxFinite,
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: const Expandable(text: ''),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: Dimensions.width40,
                  height: Dimensions.height40,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimensions.height40 / 2),
                      color: DefaultColor.themeColor),
                  child: Center(
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: Dimensions.iconsize24,
                    ),
                  ),
                ),
                TitleText(
                  text: "\$12.88 X 0",
                  color: Colors.black,
                  size: Dimensions.font26,
                ),
                Container(
                  width: Dimensions.width40,
                  height: Dimensions.height40,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimensions.height40 / 2),
                      color: DefaultColor.themeColor),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: Dimensions.iconsize24,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.height120,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
              color: DefaultColor.backgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(Dimensions.height20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: DefaultColor.themeColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(Dimensions.height20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: DefaultColor.themeColor,
                  ),
                  child: const TitleText(
                    text: '\$10 | Add to cart',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
