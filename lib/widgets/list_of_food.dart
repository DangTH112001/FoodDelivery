import 'package:flutter/material.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/content_text.dart';
import 'package:food_delivery/widgets/product_status.dart';
import 'package:food_delivery/widgets/title_text.dart';

class ListOfFood extends StatefulWidget {
  const ListOfFood({Key? key}) : super(key: key);

  @override
  State<ListOfFood> createState() => _ListOfFoodState();
}

class _ListOfFoodState extends State<ListOfFood> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return _FoodCard();
        });
  }

  // ignore: non_constant_identifier_names
  Widget _FoodCard() {
    return Container(
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
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/food01.png")),
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
                        const TitleText(
                            text: 'Nutrious fruit meal in China',
                            color: DefaultColor.textColor),
                        SizedBox(height: Dimensions.height10),
                        const ContentText(text: 'With chinese characteristics'),
                        SizedBox(height: Dimensions.height10),
                        const ProductStatus(),
                      ]),
                ),
              ),
            ),
          ],
        ));
  }
}
