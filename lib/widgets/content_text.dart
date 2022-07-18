// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import '../utils/color.dart';
import '../utils/text.dart';

class ContentText extends StatelessWidget {
  final String text;
  final Color? color;
  final double size;
  final double height;

  const ContentText(
      {Key? key,
      required this.text,
      this.color = DefaultColor.textColor,
      this.size = 0,
      this.height = DefaultText.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size == 0 ? Dimensions.font12 : size,
          fontFamily: 'Roboto',
          height: height,
          fontWeight: FontWeight.w400),
    );
  }
}
