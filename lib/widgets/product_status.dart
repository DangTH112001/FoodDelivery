import 'package:flutter/material.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/widgets/icon_and_text.dart';

class ProductStatus extends StatelessWidget {
  const ProductStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        IconAndText(
          icon: Icons.circle_sharp,
          text: 'Normal',
          iconColor: DefaultColor.statusIconColor,
        ),
        IconAndText(
          icon: Icons.location_on,
          text: '2km',
          iconColor: DefaultColor.locationIconColor,
        ),
        IconAndText(
            icon: Icons.access_time_rounded,
            text: '45min',
            iconColor: DefaultColor.clockIconColor)
      ],
    );
  }
}
