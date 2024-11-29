import 'package:flutter/material.dart';
import 'package:sbapp/constants/color_constant.dart';

class CustomHistoryWidget extends StatelessWidget {
  final IconData? icon;
  final Widget? text;
  final TextOverflow? textOverflow;

  const CustomHistoryWidget({
    Key? key,
    this.icon,
    this.text,
    this.textOverflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
          color: blackColor,
        ),
        text!,
      ],
    );
  }
}
