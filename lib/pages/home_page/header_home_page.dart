import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import '../../utils/color.dart';
import '../../widgets/content_text.dart';
import '../../widgets/title_text.dart';

class FoodPageHead extends StatefulWidget {
  const FoodPageHead({Key? key}) : super(key: key);

  @override
  State<FoodPageHead> createState() => _FoodPageHeadState();
}

class _FoodPageHeadState extends State<FoodPageHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: Dimensions.height45,
        bottom: Dimensions.height15,
      ),
      padding: EdgeInsets.only(
        left: Dimensions.width20,
        right: Dimensions.width20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const TitleText(text: 'Việt Nam'),
                  Row(
                    children: const [
                      ContentText(text: 'Tây Ninh'),
                      Icon(
                        Icons.arrow_drop_down_rounded,
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
              Container(
                height: Dimensions.height45,
                width: Dimensions.height45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: DefaultColor.themeColor,
                ),
                child: const Center(
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
