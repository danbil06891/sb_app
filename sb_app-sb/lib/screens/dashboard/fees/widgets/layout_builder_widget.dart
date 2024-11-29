import 'package:flutter/material.dart';
import 'package:sbapp/constants/color_constant.dart';

class FeeScreenLayoutBuilderWidget extends StatelessWidget {
  final IconData? icon;
  final Widget? text;
  final TextOverflow? textOverflow;
  const FeeScreenLayoutBuilderWidget({
    Key? key,
    this.icon,
    this.text,
    this.textOverflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
          color: blackColor,
        ),
        const SizedBox(
          width: 5,
        ),
        text!
      ],
    );
  }
}
