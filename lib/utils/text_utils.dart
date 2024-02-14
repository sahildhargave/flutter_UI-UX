// 😐😑😶🙄😏😣😥😮

import "package:flutter/material.dart";
import "package:uiux/utils/color_utils.dart";

class TextUtil extends StatelessWidget {
  String text;
  Color? color;
  double? size;
  bool? weight;

  TextUtil({super.key, required this.text, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? AppColors().greyColor,
          fontSize: size ?? 18,
          fontWeight: weight == null ? FontWeight.w400 : FontWeight.w700,
          fontFamily: "Poppins"),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class SmallText extends StatelessWidget {
  String text;
  SmallText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: AppColors().greyColor,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins"),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class MediumText extends StatelessWidget {
  String text;
  MediumText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: AppColors().whiteColor,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
