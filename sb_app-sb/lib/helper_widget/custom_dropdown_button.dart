import 'package:flutter/cupertino.dart';
import 'package:sbapp/constants/color_constant.dart';

class CustomDropDownButton extends StatelessWidget {
  final Widget child;
  CustomDropDownButton({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
      height: 45.0,
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
          color: lightBlackColor, borderRadius: BorderRadius.circular(12.0)),
      child: child,
    );
  }
}
