import 'package:flutter/material.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/content_text.dart';
import 'package:food_delivery/widgets/product_status.dart';
import 'package:food_delivery/widgets/title_text.dart';

class FoodInfo extends StatelessWidget {
  final ProductModel product;
  const FoodInfo({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: Dimensions.height15,
          left: Dimensions.width15,
          right: Dimensions.width15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(
            text: product.name!,
            color: DefaultColor.textColor,
            size: Dimensions.font26,
          ),
          SizedBox(height: Dimensions.height10),
          Row(
            children: [
              Wrap(
                children: List.generate(
                  5,
                  (index) {
                    return Icon(
                      Icons.star,
                      color: DefaultColor.themeColor,
                      size: Dimensions.iconsize15,
                    );
                  },
                ),
              ),
              SizedBox(width: Dimensions.width10),
              const ContentText(
                text: '4.5',
              ),
              SizedBox(width: Dimensions.width10),
              const ContentText(
                text: '1999',
              ),
              SizedBox(width: Dimensions.width10),
              const ContentText(
                text: 'comments',
              ),
            ],
          ),
          SizedBox(height: Dimensions.height20),
          const ProductStatus(),
        ],
      ),
    );
  }
}
