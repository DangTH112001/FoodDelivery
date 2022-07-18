// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:food_delivery/utils/dimensions.dart';
import '../utils/color.dart';
import '../utils/text.dart';

class TitleText extends StatelessWidget {
  final String text;
  final Color? color;
  final double size;
  final TextOverflow overFlow;

  const TitleText(
      {Key? key,
      required this.text,
      this.color = DefaultColor.textColor,
      this.size = 0,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      maxLines: DefaultText.titleMaxline,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
